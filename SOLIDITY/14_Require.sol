//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract MyContract{ 
//SOLIDITY ERROR HANDLING: using require statement

function checkInput(uint _value) public pure returns(string memory){
        require(_value >=0, "invalid uint8");
        require(_value <=255, "invalid uint8");
         
         return  "Input is Uint8";
}

function Odd(uint _value) public pure returns(bool){
         require(_value % 2 != 0 ,  "Even Number");
         return true;
}

}