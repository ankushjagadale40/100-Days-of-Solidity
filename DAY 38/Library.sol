// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

library Math{
    function sqr(uint x) internal pure returns(uint){
        uint y  = x*x;
        return y;
    }
}


contract CheckMath{
    function operate(uint x) public pure returns(uint){
        return Math.sqr(x);
    }
}
