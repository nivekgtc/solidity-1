// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract GlobalVariables {

    address public owner;
    address public myBlockHash;
    uint256 public difficulty;
    uint256 public gasLimit;
    uint256 public number;
    uint256 public timestamp;
    uint256 public value;
    uint256 public nowOn;
    uint256 public origin;
    uint256 public gasPrice;
    bytes public callData;
    bytes4 public firstFour;

    constructor() {
        owner = msg.sender;
        //0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
    
        myBlockHash = block.coinbase;
        difficulty = block.prevrandao;
        gasLimit = block.gaslimit;
        number = block.number;
        timestamp = block.timestamp;
        gasPrice = block.basefee + (difficulty * 10);
        // origin = block.origin;
        callData = block.data;
        firstFour = block.sig;
    }
}