// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract OperationsArithmatic
{
    // function alloperations(uint a,uint b) external pure returns(uint add,uint sub,uint mult,uint div)
    // {
    //     add=a+b;
    //     sub=a-b;
    //     mult=a*b;
    //     div=a/b;
    // }
      function alloperations(uint a,uint b) external pure returns(uint ,uint,uint ,uint )
    {
        return(a+b,a-b,a*b,a/b);
    }

}