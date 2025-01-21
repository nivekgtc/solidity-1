//SPDX-License-Identifier: MIT

pragma solidity ^0.8.28;

// Modifier are code that can be run before and after the function call
// Generally use for 3 reasons
// Restric Access, Validate inputs, Guard against reentrancy hack

contract Modifiers {

    address public owner;
    uint256 public x = 10;
    bool public locked;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not is owner");
        _;
    }

    modifier validateData(address _addr) {
        require(_addr != address(0), "Not valid address!");
        _;
    }

    function changeOwner(address _newOwner) public onlyOwner validateData(_newOwner) {
        owner = _newOwner;
    }

    modifier noReentrancy() {
        require(!locked, "No reentrancy");
        locked = true;
        _;
        locked = false;
    }

    function decrement (uint256 _num) public noReentrancy {
        x -= 1;

        if (_num > x) {
            decrement(_num - 1);
        }
    }
}