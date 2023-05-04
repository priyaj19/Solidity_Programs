// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract lotterapp
{
    address public mgr=msg.sender;
    address payable [] public  participant;

     receive()external  payable 
     {
         require(msg.value==1 ether,"It must to 1 ether");
         participant.push(payable(msg.sender));
     }
    function getbalance(address _to) public view returns (uint)
    {
        return address(_to).balance;
    }



}