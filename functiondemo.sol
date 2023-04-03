// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract FunctionDemo1
{
    int a=45;
    int b=35;
    function add()public view returns(int)  //view usages
    {
       return a+b; //state variable
    }
}

contract FunctionDemo2
{
    function add(int a,int b)public pure returns(int)  //pure usages
    {
       return a+b; 
    }
}
