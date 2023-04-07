// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract EvenODD
{
    
    function evenodd(uint n) external pure returns (string memory)
    {
     if(n%2==0)   
     {
         return "n is even number";
     }
    else
    {
        return "n is odd number";

    }
    }
}

contract GreaterThreenumbers
{
    function numbers(uint a,uint b,uint c) external pure returns(string memory)
    {
        if(a>b && a>c)
        {
            return "a is greater";
        }
        else if(b>c)
        {
            return "b is greater";
        }
        else 
        {
            return "c is greater";
        }
    }
}