// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract variablestypes
{
    string name="Welcome";  //state
    address owner=msg.sender;  //global
    function stateshow()external view returns (string memory)
    {
        return name;
    }
    function globalshow()external view returns (address)
    {
        return owner;
    }
     function localshow(string memory course)external pure returns (string memory)
    {
        return course;
    }
    function stateupdate(string memory _name)external 
    {
        name=_name;
    }




}