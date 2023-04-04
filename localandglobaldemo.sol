// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract localglobal
{
    function local()external pure  returns (int product,int sum)
    {
        int a=5;
        int b=2;
        product=a*b;
        sum=a+b;
    }
    function gobal()external view returns (address,uint,uint,bytes32)
    {
        address owner=msg.sender;
        uint timestamp=block.timestamp;
        uint blknumber=block.number;
        bytes32 blkhash=blockhash(block.number);
        
        return (owner,timestamp,blknumber,blkhash);

    }
}