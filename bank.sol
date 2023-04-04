// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.19;

contract Bank
{
    int public bal=1000;
    function credit(int amt)external view returns (int)
    {
        return bal+amt;   //not updating original bal
        
    }
    function debit(int amt) external 
    {
        if(amt>0)
        {
        bal=bal-amt;
        }
    }
function showbal()external  view returns(int)
{
    return bal;
}

}