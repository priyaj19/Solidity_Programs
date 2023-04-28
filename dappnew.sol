// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Dapp
{
    mapping(address=>uint) balance;
    address public owner=msg.sender;

    modifier onlyOwner
    {
        require(msg.sender==owner,"Your are not the owner..");
        _;
    }
    function getbalc(address _to) external view returns(uint)
    {
        return balance[_to];
    }

    function deposit()external  payable onlyOwner  
    {
        balance[msg.sender]=balance[msg.sender]+msg.value;
    }

    function withdraw(uint _amt)external 
    {
        balance[msg.sender]=balance[msg.sender]-_amt;
        payable(msg.sender).transfer(_amt);
    }

       
     function tranferamt(address _to,uint _amt) external onlyOwner
    {
        balance[msg.sender]=balance[msg.sender]-_amt;
        balance[_to]=balance[_to]+_amt;
    }
}