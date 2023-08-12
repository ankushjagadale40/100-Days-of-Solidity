//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./hello.sol";

contract Import{

    Hello public hello = new Hello();

    function get() public view returns(string memory){
       return hello.greet();
    }
}