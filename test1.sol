// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;
import "./testIFDemo.sol";

contract TransferDemo is TestDemo
{
    address public owner=msg.sender;
    mapping (address=>uint) public  balance;
    uint public totalSupply = 21000000;


    constructor() 
    {
       balance[msg.sender]=totalSupply;
    }

    
    function transfer(address _from,address _to,uint amount)  public 
    {
        balance[msg.sender]=balance[msg.sender]-amount;
        totalSupply = totalSupply - amount;
        balance[_to]=balance[_to]+amount;
        emit Transfer( _from, _to, amount);
    }

    function mint(uint amount) public 
    {
        balance[msg.sender]= balance[msg.sender]+amount;
        totalSupply = totalSupply + amount;
        emit Transfer(address(0), msg.sender, amount); 
    }

   function burn(uint amount) public 
    {
        balance[msg.sender]= balance[msg.sender]-amount;
        totalSupply = totalSupply - amount;
        emit Transfer(address(0), msg.sender, amount); 
    }

    

  

}