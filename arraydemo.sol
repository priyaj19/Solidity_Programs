//SPDX-License-Identifier:MIT
pragma solidity ^0.8.19;

contract Array
{
    string[] public name;
    uint[] public rollno=[1,2,3];
    uint[3] public marks;
    uint[3] public code=[101,102,103];

    // function showdeatils()public  returns (string[] memory,uint[] memory,uint[3] memory,uint[3] memory) 
    // {
    //     name=["aaa","bbb","ccc"];
    //     marks=[200,300,400];
    //     return(name,rollno,marks,code);
    // }
    function showdeatils()public  
    {
        name=["aaa","bbb","ccc"];
        marks=[200,300,400];
        
    }

  
}