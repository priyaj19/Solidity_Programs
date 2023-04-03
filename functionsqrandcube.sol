//SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract square
{
int s=56;
function sqr(int n) external pure returns (int)  //input function
{
return  n*n;
}
function areaofsquare() public  view returns (int)
{
return s*s;
}
}

contract cube
{
function cub(int n) external  pure returns(int)
{
    return n*n*n;
}
}