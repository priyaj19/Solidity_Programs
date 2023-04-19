// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract StructureCarDemo
{
    struct car
    {
        string model;
        uint year;
        address owner;
    }
    car[] public  car_obj;

    function registercar(string memory _model,uint _year)external 
    {
        car_obj.push(car(
        {
            model:_model,
            year:_year,
            owner:msg.sender
        }));
    }

    function showcars(uint _index)external view returns(string memory,uint,address)
    {
        car storage c1=car_obj[_index];
        return(c1.model,c1.year,c1.owner);
    }

    function insertcars()external 
    {
        car memory thar=car("thar",2023,msg.sender);
        car_obj.push(thar);
        car memory bmw=car({
            model:"bmw",
            year:2024,
            owner:msg.sender
        });
        car_obj.push(bmw);
        car memory maruti;
        maruti.model="maruti sz";
        maruti.year=2000;
        maruti.owner=address(56);
        car_obj.push(maruti);
    }

    function updatecars(uint _index)external 
    {
        car storage c1=car_obj[_index];
        c1.year=2012;
    }
}