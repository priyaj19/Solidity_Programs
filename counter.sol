// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract counter
{
    uint public count;
    function increment()external 
    {
       count+=1;
    }
    function decrement()external 
    {
        count-=1;
    }
}