// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract Details {
    string public name;
    uint public number;
    constructor(string  memory _name , uint _number) payable{
        name = _name;
        number = _number;
    }
}

contract Class{
    Details[] public details;

    function create(string memory _name , uint _number) external{
        Details detail = new  Details(_name , _number);
        details.push(detail);
    }

    function create1(string memory _name , uint _number) public payable{
        Details detail = (new  Details) {value:msg.value}(_name , _number);
        details.push(detail);
    }

    function get(uint x) public view returns(string memory, uint , uint){
        Details detail = details[x];
        return(detail.name(), detail.number() , address(detail).balance);
    }

    }

