//SPDX-License-Identifier: MIT

pragma solidity ^0.8.28;

contract StateVariables {

    string public myState;
    uint public myNum;

    string public defaultText = "Hey default text";
    uint256 public defaultNum = 5;

    bytes public defaultBytes = "Hey default";

    uint256[] public myNumbers;

    constructor(string memory _text, uint256 _number)  {
        myState = _text;
        myNum = _number;
    }
}