// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;


contract Loopdemo
{
    function factorial(uint n)external pure returns (string memory,uint)
    {
        uint fact=1;
        for(uint i=1;i<=n;i++)
        {
            fact=fact*i;
        }
        return ("factorial of n=",fact);
    }

    function reverse(uint n)external pure returns (string memory,uint)
    {
        uint rem;
        uint rev;
        while(n>0)
        {
            rem=n%10;
            n=n/10;
            rev=rem+(rev*10);
        }
        return ("Reverse of n=",rev);

    }
}


