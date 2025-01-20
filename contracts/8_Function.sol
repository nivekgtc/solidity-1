//SPDX-License-Identifier: MIT

pragma solidity ^0.8.28;

contract LearnFn {

    // uint256 public hey;
    uint256 hey;

    function getInfo() public view returns(uint256) {
        return hey;
    }

    function updateData(uint256 _hey) public {
        hey = _hey;
    }

    // function get(uint256 _a, uint256 _b) public view returns(uint) {
    //     uint256 newNumber = _a + _b;
    //     return newNumber;
    // }

    function get(uint256 _a, uint256 _b) public returns(uint256) {
        uint256 newNumber = _a + _b;
        hey = newNumber;
        return newNumber;
    }
}