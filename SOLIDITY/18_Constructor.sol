//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract X{ 
   string public name;

   constructor(string memory _name) {
    name = _name;
   }
}

contract Y{ 
   string public text;

   constructor(string memory _text) {
    text  = _text;
   }
}

//There are two ways to initialize this parent contract with parameters; 

contract B is X("Input to X"), Y("Input to Y") {
     
}

contract C is X, Y {
     //pass params to constructor , like function modifier.
     constructor(string memory _name, string memory _text) X(_name) Y(_text) {}
}

// NOTE: parent contruxtor always called in the order of inheritance.
// regrdless of the rent contracts are listed in constructor of child contract .

//  contract E is X, Y {
//      constructor(string memory _name, string memory _text) Y(_name)X(_text) {}
//  }
