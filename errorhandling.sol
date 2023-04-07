// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;


contract Error1
{
    
    function req(uint n)external pure
    {
        if(n==1)
        {
            revert("n must be other than 1");
        }
    }

    error minbal(uint balance,uint withdraw);
    function chkbal(uint _w) external pure 
    {
        uint _b=1000;
        if(_b<_w)
        {
            revert minbal({balance:_b,withdraw:_w});
        }
    }

}

