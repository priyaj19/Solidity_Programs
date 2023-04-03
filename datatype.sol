// SPDX-License-Identifier: MIT
pragma solidity >=0.8.13 <=0.8.19;

contract DataType1
{
    string public msg1="welcome";
    int public i=-345;
    uint public j=345;
    bool public b=true;
    bytes public by="to Solidity";
    address public owner=msg.sender;
}
contract DataType2
{
    string public msg1="hi hello";
    
    address public owner=msg.sender;
}
