//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract NFTCounter{
    uint public nftCount;
 
    // public-> function visibility
    // view -> just want to view value
    // returns -> define type of values func will return

    //get the NFTCount
    function checkNFTCount () public view returns(uint) { 
       return nftCount;
    }

    //function to increase nft count;
    function addNFTCount() public {
        nftCount++;
    }

     //function to decrease nft count;
    function removeNFTCount() public {
        nftCount--;
    }
}