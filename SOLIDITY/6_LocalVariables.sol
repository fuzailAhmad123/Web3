//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract MyContract{ 
    // LOCAL VARIABLES: all stored in function and can be used within the function when called. not stores over blockchain
 
    uint public myNumPublic;

    function local() public returns(uint) {
          uint myNum = 25; 
          myNumPublic = myNum;
          return  myNum;
    }
}
