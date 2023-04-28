// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract onwerdemo
{
    address public owner=msg.sender;
    modifier  onlyOwner
    {
        require(msg.sender==owner,"you are not owner to do this task");
        _;
    }

    function setowner(address _owner)external onlyOwner
    {
        owner=_owner;
    }
}