// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract student
{
    string public n;
    uint public  r;
    function s_details(string memory name,uint rno) external 
    {
        n=name;
        r=rno;
    }

    function s_marks(uint p,uint c,uint m,uint b,uint e) external pure returns(uint percentage)
    {
        uint total;
        uint per;
        total=p+c+m+b+e;
        per=total/5;
        percentage=per;
    }
}