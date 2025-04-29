//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract MyContract{ 
//SOLIDITY FUNCTION MODIFIER: Are code that can be run berfore and after of function call.
// Generally used for, Restrict access, Validate Inputs, Gaurds against reentrancy attacks.


address public owner;
uint public x =10; 
bool public locked;

constructor() {
    owner= msg.sender; 
}

modifier onlyOwner() {
    require(msg.sender == owner, "Only Accessible to Onwer Of Contract");
    _;
}
modifier validateAddress(address _add) {
    require(_add != address(0), "Not Valid Address");
    _;
}

modifier noReemtrancy() {
    require(!locked, "No Reenterancy");
    locked = true;
    _;
    locked = false;
}

function changeOwner(address _newOwner) public onlyOwner validateAddress(_newOwner){
    owner = _newOwner;
}

function decrement(uint i) public noReemtrancy {
  x -= 1;
  if (i > 1) {
    decrement(i - 1);
  }
}
  
}