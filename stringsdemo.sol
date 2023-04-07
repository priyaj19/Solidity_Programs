// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Stringdemo
{
    string public greetmsg;
    function setmsg(string memory _msg)external 
    {
        greetmsg=_msg;
    }
    function getmsg()external view returns (string memory)
    {
        return greetmsg;
    }
}