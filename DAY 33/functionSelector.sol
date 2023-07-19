//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract Test{

    event log(bytes data);
    function fun(address addr , uint num) external{
        emit log(msg.data);
    }
}

contract Selector{
    function getSelector(string calldata _fun) external pure returns (bytes4){
        return bytes4(keccak256(bytes(_fun)));
    }
}

//0x10eaee6a
// 0x10eaee6a
//0000000000000000000000003136d6e327018d4124c222e15f4ad7fa8621f16e0000000000000000000000000000000000000000000000000000000000000007