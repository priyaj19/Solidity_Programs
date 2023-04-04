// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract constantdemo
{
    address public constant myaddress=address(43546);
    string public constant myname="aaaa";
    
    // function constshow() external  error constants not modifiable
    // {
    //     myname="zzzz";
    // }
}