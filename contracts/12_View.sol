//SPDX-License-Identifier: MIT

pragma solidity ^0.8.28;

contract View {

    uint256 num1 = 2;
    uint256 num2 = 7;

    function getResults() public view returns(uint256, uint256) {
        return (num1, num2);
    }

    function calculate() public view returns (uint256 product, uint256 total) {
        uint256 Num1 = 20;
        uint256 Num2 = 30;

        product = num1 * num2;
        total = Num1 + Num2;

        return (product, total);
    }

    function pureFunction() public pure returns (uint256 a, uint256 b) {
        uint256 total = a + b;
        uint256 difference = a - b;
        
        return (total, difference);
    }
}