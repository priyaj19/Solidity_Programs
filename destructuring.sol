// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;
contract destructure
{
    function myreturnvalues()public pure returns (uint n,bool chk)
    {
        n=1;
        chk=true;
    }

    function destructurevalue()public  pure 
    {
        (uint n,bool chk)=myreturnvalues();
    }

}