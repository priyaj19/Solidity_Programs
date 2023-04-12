//SPDX-License-Identifier:MIT
pragma solidity ^0.8.19;

contract Array
{
    uint[] public myfirstarray;
    string[3] public name=["aaa","bbb","ccc"];
    function shownames()public view  returns (string[3] memory)
    {   
        return name;
    }
    function replacename(string memory _name) public
    {
        name[2]=_name;

    }
    function show()public returns (uint[] memory)
    {
        myfirstarray=[34,54,56,67];
        myfirstarray.push(23);
        return (myfirstarray);
    }

    function get(uint n)public view returns (uint)
    {
        return myfirstarray[n];
    }
    function setarray(uint n)external 
    {
        myfirstarray.push(n);
    }
        function removevalueandaddvalue(uint n)external 
    {
        delete myfirstarray[n];
    }

    function lengtharray()external view  returns (uint)
    {
      return   myfirstarray.length;
    }

    function arrwithmemory()external pure returns (string[]  memory) 
    {
        string[] memory colors=new string[](2);
        colors[0]="red";
       // colors.push("blue");
        //colors[2]="red";
        return (colors);
    }


}