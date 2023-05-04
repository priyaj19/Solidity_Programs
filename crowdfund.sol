// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract funding
{
    address public mgr=msg.sender;
    mapping (address=>uint) public contributors;
    uint public collectedamt;

    struct RequestAmount
    {
        address payable recipient;
        uint valueofamount;
        uint noofvoters;
        mapping(address=>bool) voters;
    }

    mapping (uint=>RequestAmount) public RequestAmounts;
    uint public NoofRequestedAmounts;

    modifier onlyOwner
    {
        require(msg.sender==mgr,"You are not manager");
        _;
    }
    function sendether()external payable 
    {
        contributors[msg.sender]=contributors[msg.sender]+msg.value;
        collectedamt=collectedamt+msg.value;

    }

    function getbalance(address _to)public view onlyOwner returns (uint)
    {
        return address(_to).balance;
    }

    function voterequest(uint _requestno,uint _valueofamount) public 
    {
        RequestAmount storage Thisvoterequest=RequestAmounts[_requestno];
        Thisvoterequest.voters[msg.sender]=true;
        Thisvoterequest.noofvoters+=1;
        Thisvoterequest.valueofamount=_valueofamount;
    }
    function makepayment(uint _requestno)public onlyOwner
    {
         RequestAmount storage Thisvoterequest=RequestAmounts[_requestno];
         Thisvoterequest.recipient.transfer(Thisvoterequest.valueofamount);
         
    }

}