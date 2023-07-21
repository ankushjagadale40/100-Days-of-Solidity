// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;


contract GETMAIN{
    function setValue1(MAIN main , uint _x) external{
        main.setValue(_x);
    }

    function getValue1(address main) external view returns(uint x){
         x = MAIN(main).getValue();
    }

    function setValueandReceive1(MAIN main , uint _x) external payable{
        main.setValueandReceive{value : msg.value}(_x);
    }

    function getValueandCheck1(address main) external view returns(uint x , uint value){
        (x , value) = MAIN(main).getValueandCheck();
    }
}

contract MAIN {
    
    uint  public x;
    uint public value;

    function setValue(uint _x) external {
        x = _x;
    }

    function getValue() external view returns (uint){
        return x;
    }

    function setValueandReceive(uint _x) external payable{
        x = _x;
        value = msg.value;
    }

    function getValueandCheck() external view returns(uint , uint){
        return(x,value);
    }
}
