// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract funding1
{
    mapping(address=>uint) public contributors;
    address public manager;
    uint public mincontribution;
    uint public deadline;
    uint public target;
    uint public collectedamount;
    uint public noofcontributors;

    struct requestamount
    {
        string description;
        address payable recipient;
        uint valueofamount;
        bool isamountreceived;
        uint noofvoters;
        mapping(address=>bool)voters;
    }
    mapping(uint=>requestamount) public requestamounts;
    uint public noofrequestamounts;

    constructor(uint _target,uint _deadline)
    {
        target=_target;
        deadline=block.timestamp+_deadline;
        mincontribution=100 wei;
        manager=msg.sender;
    }
    function sendether()public payable 
    {
        require(block.timestamp<deadline,"Deadline has passed");
        require(msg.value>=mincontribution,"Min contribution is not met");
    if(contributors[msg.sender]==0)
    {
        noofcontributors++;
    }
    contributors[msg.sender]=contributors[msg.sender]+msg.value;
    collectedamount=collectedamount+msg.value;
    }

    function getcontractbalance() public view returns(uint)
    {
        return address(this).balance;
    }

    function refundamount()public 
    {
        require(block.timestamp<deadline&&collectedamount<target,"The contributor is not eligible for refund");
        require(contributors[msg.sender]>0);
        address payable user=payable(msg.sender);
        user.transfer(contributors[msg.sender]);
        contributors[msg.sender]=0;
    }

    modifier  onlyManager()
    {
        require(msg.sender==manager,"only manager will call this function");
        _;
    }
    function createrequest(string memory _description,address payable _recipient,uint _valueofamount)public  onlyManager
    {
        requestamount storage newrequest=requestamounts[noofrequestamounts];
        noofrequestamounts++;
        newrequest.description=_description;
        newrequest.recipient=_recipient;
        newrequest.valueofamount=_valueofamount;
        newrequest.isamountreceived=false;
        newrequest.noofvoters=0;
    }
    function voterequest(uint _requestno)public 
    {
        require(contributors[msg.sender]>0,"you must be a contributor to vote the type of request");
        requestamount storage thisvoterequest=requestamounts[_requestno];
        require(thisvoterequest.voters[msg.sender]==false,"you have already voted");
        thisvoterequest.voters[msg.sender]=true;
        thisvoterequest.noofvoters++;
    }
    function makepayment(uint _requestno)public onlyManager
    {
        require(collectedamount>=target);
        requestamount storage thisvoterequest=requestamounts[_requestno];
        require(thisvoterequest.noofvoters>noofcontributors/2,"Majority of contributors does not support");
        thisvoterequest.recipient.transfer(thisvoterequest.valueofamount);
        thisvoterequest.isamountreceived=true;

    }
}