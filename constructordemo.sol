// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract const1
{
    string public nm;
    uint e;
    // constructor(string memory name,uint eno)
    // {
    //     nm=name;
    //     e=eno;
    // }
    // constructor()
    // {
    //    nm="welcome";
       
    // }
     constructor(string memory name) 
    {
       nm=name;
       
    }
}

contract const2 is const1("Sgfdg") {
    uint public n;
    constructor(uint _n)
    {
        n=_n;
    }
}