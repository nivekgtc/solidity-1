// Boolean
// Integer
// Fixed Point Numbers
// Address
// Bytes and Strings
// Enums

// Reference Types

// Arrays
// struct
// Mapping

//SPDX-License-Identifier: MIT

pragma solidity ^0.8.28;

contract DataTypes {

    bool public hey;
    bool public no = true;

    //UINT stands for unsigned integer, meaning non negative integer differente size are availables
    // uint8 //ranges 0 -2 ** 8 - 1 // 255
    // uint16  //ranges 0 -2 ** 16 - 1 // 65535
    
    // uint256 // ranges 0 - 2 ** 256 -1 // 1.1579209e+77

    uint8 public u8 = 1;
    uint public u256 = 456;
    uint public u = 256;

    // NEGATIVE NUMBER

    // int256 ranges from -2 ** 255 to 2 ** 255 -1
    // int128 ranges from -2 ** 127 to 2 ** 127 -1
    int8 public i8 = -1;
    int public i256 = -456;
    int public i = -256;

    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    // Array

    // In solidity, the data types byte represent a sequence of bytes, so generally there are two types of bytes

    // Fixed-sized bytes array
    // dynamically-sized bytes array
    // So when you define byte, in smart contract it's represent dynamic bytes array

    bytes1 public a = 0xb5; // [10110101]
    bytes1 public b = 0x56; // [01010110]

    // Address types

    address public ahey;
    address public addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    // Default values
    bool public defaultBool; // false
    uint public number; // 0
    int public defaultInt; //0
    address public key; // 0x000000000
}