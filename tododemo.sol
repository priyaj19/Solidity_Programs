// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Tododemo1
{
    struct todolist
    {
        string uname;
        bool completed;
    }

    todolist[] public td;

    function createusertdl(string calldata _uname)external 
    {
        td.push(todolist({
            uname:_uname,
            completed:false
        }));
    }

    function getusertdl(uint _index) external view returns (string memory,bool)
    {
        todolist storage t=td[_index];
        return(t.uname,t.completed) ;
    }

    function updatetdl(uint _index) external 
    {
        todolist storage t=td[_index];
        t.completed=!t.completed;
    }
}