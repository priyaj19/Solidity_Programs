// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract datalocation2
{
    function setmemory(string calldata mystring,uint[] memory myarray)public 
    {
        getmemeory(myarray);
    }

    function setcalldata(string calldata mystring,uint[] calldata myarray)public 
    {
        getmemeory(myarray);
        getcalldata(myarray);
    }

    function getmemeory(uint[] memory myarray) public 
    {

    }
    
    function getcalldata(uint[] calldata myarray) public 
    {

    }
}