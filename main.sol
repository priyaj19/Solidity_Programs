// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "./interfacedemo.sol";


contract demo is IFDemo
{
    mapping (address=>uint) public bal;
    function show(string memory str1)external pure returns (string memory)
    {
        return (str1);
    }
    function showbalance()payable public  
    {
    uint shbal=address(this).balance;
    emit balance(bal[msg.sender]);
    
    }

}