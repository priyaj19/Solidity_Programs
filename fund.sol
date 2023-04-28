// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract funding1
{
    mapping(address=>uint) public contributors;
    address public manager=msg.sender;
    
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

    function sendether()public payable 
    {
       
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
    function voterequest(uint _requestno)public 
    {
        requestamount storage thisvoterequest=requestamounts[_requestno];
        thisvoterequest.voters[msg.sender]=true;
        thisvoterequest.noofvoters;
    }
    function makepayment(uint _requestno)public onlyManager
    {

        requestamount storage thisvoterequest=requestamounts[_requestno];
        thisvoterequest.recipient.transfer(thisvoterequest.valueofamount);
        thisvoterequest.isamountreceived=true;

    }
}