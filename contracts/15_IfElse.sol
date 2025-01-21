//SPDX-License-Identifier: MIT

pragma solidity ^0.8.28;

contract Ifelse {

    uint256 public myNym = 5;
    string public myString;

    function get(uint256 _num) public pure returns (string memory myStrin) {
        if (_num == 5) {
            myStrin = "Hey the value of myNum is 5";
        } else if (_num == 4){
            myStrin = "Not 5";
        } else {
            myStrin = "Get out of my way";
        }

        return myStrin;
    }

    function shortHand (uint256 _num) public returns (string memory) {
        return _num == 5 ? myString = "Kevin" : myString = "No buddy";
    }
}