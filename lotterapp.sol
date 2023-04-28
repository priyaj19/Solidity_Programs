// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract LotteryApp
{
    address public mgr;
    address payable[] public participants;

    constructor()
    {
        mgr=msg.sender;
    }

    receive()external payable 
    {
        require(msg.value==1 ether,"Entry fee only 1 ether");
        participants.push(payable(msg.sender));

    }
    function getbalance()public  view  returns (uint)
    {
    require(msg.sender==mgr,"You are not manager");
    return address(this).balance;
    }

    function random()public view returns (uint)
    {
return uint(keccak256(abi.encodePacked(block.prevrandao,block.timestamp,participants.length)));
    }


    function selectwinner()external 
    {
        require(msg.sender==mgr,"You are not manager");
        require(participants.length>=3,"Paricipants must be greater or equal to 3");
        address payable winner;
        uint randomvalue=random();
        uint indexposition=randomvalue%participants.length;
        winner=participants[indexposition];
        winner.transfer(getbalance());
    }

    function showpartbal(address _p)external view returns (uint)
    {
        return address(_p).balance;
    }
}