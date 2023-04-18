// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract   Datalocation1
{
    uint[] public  myarray=[10,20,30];
    function storagedemo() external  returns (uint[] memory)
    {
        uint[] storage s_myarray=myarray;
        s_myarray[0]=40;
        return s_myarray; 
    }

    function memorydemo()external view
    {
        uint[] memory m_myarray=myarray;
        m_myarray[0]=50;
    }


}