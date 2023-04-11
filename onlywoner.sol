// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract onlyowner
{
    address public owner;
    constructor()
    {
        owner=msg.sender;
    }

    modifier onlyOwner()
    {
        require(msg.sender==owner,"you are not owner of contract");
        _;
    }

    function setowner(address _owner)external onlyOwner 
    {
        require(_owner!=address(0),"new onwer cannot be assign address zero");
        owner=_owner;
    }
}