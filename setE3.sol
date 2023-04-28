// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract error
{
    
    function requirerevert(uint n)external pure
    {
        if(n<1)
        {
            revert("n must be greater than 1");
        }
        // require(n<1,"n must be greater than 1");
    }

    function assertdemo(uint n)external pure 
    {
        assert(n==1);
    }

}