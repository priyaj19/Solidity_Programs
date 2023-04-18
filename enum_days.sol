// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract enumdemo2
{
    enum edays{sun,mon,tues,wed,thurs,fri,sat}
    edays defaultday=edays.mon;
    edays e;
    function showdefaultday() external view returns (edays)
    {
        return defaultday;
    }

    function setday(edays _day)external 
    {
        defaultday=_day;
    }   

    function wed()external pure returns (edays)
    {
        
        return edays.wed;
    }
}