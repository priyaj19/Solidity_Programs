// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract student
{
    function s_details(string memory name,uint rno) external pure returns (string memory studentname,uint rollnumber)
    {
        studentname=name;
        rollnumber=rno;
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