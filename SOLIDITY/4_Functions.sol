//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract MyContract{
 //Function : Reusable piec of code, reduces need of writing same code again and again.

 //  Declaring Function in Solidity For: 
 // Modifying State Variables, Emiting Variables, Creating Other Contracts, Using Self-Destruct, Sending Ether via calls, Marked Pure or View, assemblty certain Opcodes, Using Low Level Calls.

 uint public key;

 function getKey    () public view returns(uint){
        return key;
 }   
 
 function updateKey(uint _keyValue) public {
       key = _keyValue;
 }
    

 function getSun(uint _a, uint _b) public pure returns(uint) {
      uint newNum =  _a + _b;
      return newNum;
 }
  
}

