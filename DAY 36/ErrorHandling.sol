//SPDX-License-Identifier: MIT
//compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;


library Math{
    function div(uint a , uint b) external pure returns (uint){
        require(b > 0, " It is zero");
        return a/b;
    }
}

contract ErrorHandling {
   function check(uint a , uint b) external pure returns (uint result , bool success){
       try Math.div(a,b) returns(uint _result){
           result = _result;
           success = true;
       }
       catch{
           result = 0;
           success = false;
       }
   }
}

