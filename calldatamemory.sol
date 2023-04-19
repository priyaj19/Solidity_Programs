// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract calldatamemory1
{
    string public name;
    function set(string calldata _name)external 
    {
        name=_name;
    }
    function get()external view returns (string memory)
    {
        return name;
    }
    function get1(string calldata _nm) external  pure returns (string memory)
    {
        return _nm;
    }
}