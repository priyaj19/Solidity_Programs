// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.19;

contract Bank
{
    uint public bal;
    string public name;
    address public accno;
    
    constructor(string memory _name,uint _bal)
    {
        accno=msg.sender;
        bal=_bal;
        name=_name;
    }
    function debit(uint amt) external 
    {
        if(amt>0)
        {
        bal=bal-amt;
        }
    }
     function credit(uint amt) external 
    {
        if(amt>0)
        {
        bal=bal+amt;
        }
    }
function showbal()external  view returns(uint)
{
    return bal;
}

}