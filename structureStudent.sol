// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract student_structure
{
    struct student
    {
        string name;
        uint rollno;
        string course;
    }
    student[] public s;

    function insert(string memory _name, uint _rollno,string memory _course) external 
    {
        s.push(student({
            name:_name,
            rollno:_rollno,
            course:_course
        }));
    }

    function register()external 
    {
        student memory aaaa=student("aaaa",12,"mbd");
        s.push(aaaa);

        student memory bbb;
        bbb.name="bbb";
        bbb.rollno=13;
        bbb.course="dcc";
        s.push(bbb);

        s.push(student(
            {
                name:"cccc",
                rollno:14,
                course:"mcc"
            }
        ));

        s.push(student("vvvv",15,"python"));


    }

    function deletestudent()external 
    {
        s.pop();
    }
}