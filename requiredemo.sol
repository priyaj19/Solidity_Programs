// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract ErrorDemo
{
    function testrequire(uint i) external pure returns(uint)
    {
        require(i>=10,"i must b egreater or equal to 10");
        return i;
    }

     function testrevert(uint i) external pure returns(uint)
    {
        if(i<=10)
        {
        revert("i must be greater or equal to 10");
        }
        return i;
    }

    uint i=5;
    function assertdemo()external view 
    {
        assert(i==1);
    }

}