//SPDX-License-Identifier: MIT

pragma solidity ^0.8.28;

contract MyContract {

    string public hey = "Hey arrombado";
    uint256 public no = 4;

    // constructor(string memory _hey, uint _no) {
    //     hey = _hey;
    //     no = _no;
    // }

    function addInfo(string memory _hey, uint _no) public {
        hey = _hey;
        no = _no;
    }
}

