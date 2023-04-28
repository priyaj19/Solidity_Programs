// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract statements
{
    function grater(uint a,uint b)external  pure returns(string memory)
    {
        string memory ans;
        if(a>b)
        {
            ans="a is greater than b";
            return ans;
        }
        else 
        {
            ans="b is greater than a";
            return ans;
        }
    }

    function facto(uint n)external pure returns (string memory,uint)
    {
        //string memory ans="the factorial of n is=";
        uint i=1;
        uint fact=1;
        for(i=1;i<=n;i++)
        {
            fact=fact*i;
        }
        return("the factorial of n is=",fact);
    }
}