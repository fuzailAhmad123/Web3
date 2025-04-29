//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract MyContract{ 
    // GLOABAL VARIABLES: Which can be shared between different contracts.

    address public owner;
    address public myBlockHash;
    uint public difficulty;
    uint public gasLimit;

    constructor() {
        owner = msg.sender; //here msg.sender is ab GLOBAL VARIABLE 
        myBlockHash = block.coinbase;
        difficulty = block.prevrandao;
        gasLimit = block.gaslimit;
    }
 

}
