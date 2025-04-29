//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract MyContract{ 
 
uint public num = 5;
string public myString;


function checkIfElse(uint _num) public returns(string memory) {
  if (_num == 5) {
    myString = "Num is equal to 5";
  }else {
    myString = "Not 5";
  }
  return  myString;
}

function shortHand(uint _num) public returns(string memory) {
 return  _num == 5 ? myString  = "Number is equal to 5:myString" : myString = "Not 5";
}

}