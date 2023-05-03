// SPDX-License-Identifier: GPL
pragma solidity ^0.8.19;
import "./cube.sol";

// library libexample
// {
//     function square(uint n)public pure  returns(uint)
//     {
//         return n*n;
//     }

// }

// contract NewlibraryDemo 
// {
//     using libexample for uint;
//     function output(uint _n)public pure returns(uint)
//     {
//         return _n.square();
//     }
// }

contract NewlibraryDemo1  {
    using libexample for uint;
    function output(uint _n)public pure returns(uint)
    {
        return _n.cube();
    }
}