// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract enumdemo
{
    enum OrderStatus
    {
        none,
        pending,
        shipped,
        completed,
        rejected,
        canceled
    }
    OrderStatus public  status;

    function setstatus(OrderStatus _status)external 
    {
        status=_status;
    }

    function getenum() external view returns(OrderStatus)
    {
        return status;
    }

    function pending() external 
    {
        status=OrderStatus.pending;
    }

    function shipped() external 
    {
        status=OrderStatus.shipped;
    }

    function completed() external 
    {
        status=OrderStatus.completed;
    }

    function rejected() external 
    {
        status=OrderStatus.rejected;
    }

    function reset()external 
    {
        delete  status;
    }


}

