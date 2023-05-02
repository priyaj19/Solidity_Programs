// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

interface IFDemo
{

function show(string memory str1) external view returns(string memory);
event balance(uint bal);
event Transfer(address indexed from,address indexed to, uint amount);
}