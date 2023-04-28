// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Dappwithoutpayable
{
    mapping(address=>uint) balance;
    mapping(address=>uint) balance_new;
    function deposit(uint _amt)external  payable  
    {
        balance[msg.sender]=_amt;
    }

    function withdraw(uint _amt)external 
    {
        balance[msg.sender]=balance[msg.sender]-_amt;
    }

      function credit(uint _amt)external 
    {
        balance[msg.sender]=balance[msg.sender]+_amt;
    }

    function getbalc(address owner) external view returns(uint,uint)
    {
        return (balance[owner],balance_new[owner]);
    }
     function tranferamt(address _owner,uint _amt) external    //error
    {
        balance[msg.sender]=balance[msg.sender]-_amt;
        balance_new[_owner]=balance_new[_owner]+_amt;
    }
}