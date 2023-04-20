// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract structwithmap
{
    struct student
    {
        string name;
        uint rollno;
    }

    mapping (address=>student) public s_struct;

    function  insert()external 
    {
        s_struct[msg.sender]=student(
            {
                name:"aaa",
                rollno:1
            }
        );
         
      
    }

    function showdata(address _address) external view returns (string memory,uint )
    {
        return (s_struct[_address].name,s_struct[_address].rollno);
    }

    function update(string memory _name)external 
    {
        student storage s1=s_struct[msg.sender];
        // s1.name="bbb";
        s1.name=_name;
    }
}