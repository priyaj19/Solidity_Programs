// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract getset
{
int public n;
function get()external view returns (int)
{
    return  n;
}

function set(int _n) external 
{
    n=_n;
}
function show()external  view returns (int)
{
    return n;
}
function reset()external 
{
n=0;
}
function nplusone()external 
{
    n+=1;//n=n+1
}

}

contract abc
{
    
}