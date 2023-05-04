// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Crowd
{
    address public mgr=msg.sender;
    mapping (address=>uint) public balance;
    address payable contributer;
    function sendether()public  payable 
    {
        balance[msg.sender]=balance[msg.sender]+msg.value;
    }

    function getbalance()public  view returns (uint) 
    {
        return address(this).balance;
    }
    function transferfund()external payable  
    {
        contributer.transfer(msg.value);
    }
}