// SPDX-License-Identifier: MIT

pragma solidity ^0.8.28;

contract Mapping {
    // Mapping from address to uint
    mapping(address => uint) public myMap;

    function getMapping(address _addr) public view returns (uint) {
        //Mapping always returns a value
        // If the value was never set, it will return the default value.
        return myMap[_addr];
    }

    function set(address _addr, uint _i) public {
        //Update the value at this address
        myMap[_addr] = _i;
    }

    function remove(address _addr) public {
        // Reset the value to the default value
        delete myMap[_addr];
    }


}

contract NestedMapping {
    //Neste mapping (mapping from address to another mapping)

    mapping(address => mapping(uint => bool)) public nested;


    function get(address _addr, uint _i) public view returns(bool) {
        // You can get values from a nested mapping
        // Even when it is not initialized
        return nested[_addr][_i];
    }

    function set(address _addr, uint _i, bool _boo) public {
        nested[_addr][_i] = _boo;
    }

    function remove(address _addr, uint _i) public {
        delete nested[_addr][_i];
    }
}