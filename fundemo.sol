// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract crowd
{
    address public manager=msg.sender;
    address[] public approvals;
    uint public mincontribution;
    struct request
    {
        string des;
        uint value;
        address recipient;
        bool voterstatus;
    }

    mapping (uint=>request)public req;
    uint public noofreq;
    function createreq(string memory _des,address payable _rec,uint _value)public 
    {
        request storage newreq=req[noofreq];
        noofreq++;
        newreq.des=_des;
        newreq.value=_value;
        newreq.recipient=_rec;
        newreq.voterstatus=false;
    }

    function contribute() public payable 
    {
    approvals.push(msg.sender);
    }
    function campaign(uint min) public 
    {
        manager=msg.sender;
        mincontribution=min;
    }

}