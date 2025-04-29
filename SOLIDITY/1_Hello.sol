//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// First we need to define the License Identifier and solidty version for the compiler, ^ means any version above that can be used above the specififed version.

contract MyFirstContract{
    //1. define the value directly;
    string public hey = "Hey there";

    //2. define using constructor, runs when the smart contract is deployed on BlockChain. 
    string public hey2;
    string public smartContractName;
    constructor(string memory _contractName) {
        hey2 = "Welcome to Solidity!";
        smartContractName = _contractName;
    }

    function updateSmartContractName(string memory _scName) public  {
          smartContractName = _scName;
    }
}


