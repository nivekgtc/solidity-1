//SPDX-License-Identifier: MIT

pragma solidity ^0.8.28;


// Solidity Error handler
// require statement
contract Require {
    function checkInput(uint256 _input) public pure returns (string memory) {
        require(_input >= 0, "invalid uint8");
        require(_input <= 255, "invalid input");

        return "Input is Uint8";
    }

    function Odd (uint256 _input) public pure returns (bool) {
        require(_input % 2 != 0);

        return true;
    }
}