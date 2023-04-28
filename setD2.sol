// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract counterdemo
{
    uint public count;
    function increment()external 
    {
        count+=1;
    }
    function derement()external 
    {
        count-=1;
    }
}