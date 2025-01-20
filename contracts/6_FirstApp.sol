//SPDX-License-Identifier: MIT

pragma solidity ^0.8.28;

contract NFTCount {

    uint256 public numberOfNFT;

    // Check total number of NFT
    function checkTotalNFT() public view returns (uint256) {
        return numberOfNFT;
    }
    
    //This function will increment the NFT Number
    function addNFT() public {
        numberOfNFT += 1;
    }

    // THis function will delete the NFT by 1
    function deleteNFT() public {
        numberOfNFT -= 1;
    }
}