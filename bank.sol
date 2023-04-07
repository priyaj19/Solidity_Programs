// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.19;

contract Bank
{
    uint public bal=msg.value;
    string name="fghfgf";
    address accno=msg.sender;
    function createacc()external view returns (string memory,uint,address)
    {
      
          return (name,bal,accno);
       
        
    }
    function credit(uint amt)external view returns (uint)
    {
        return bal+amt;   //not updating original bal
        
    }
    function debit(uint amt) external 
    {
        if(amt>0)
        {
        bal=bal-amt;
        }
    }
function showbal()external  view returns(uint)
{
    return bal;
}

}