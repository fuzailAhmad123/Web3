//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract MyContract{ 
 //VIEW : This keyword is used with those functions whoch only reds the values

uint Num1 = 1;
uint Num2 = 2;


// Simply reads the data
function redValues() public pure returns(uint, uint){
    uint n1 = 10;
    uint n2 = 20;
    return  (n1, n2);
}

//If i want to calculate
//Can only do with lopcal varibales but not with the state var.
function getCalculatedValues() public pure returns(uint product, uint total){
    // Not fine with pure keyword
    // Num1 += 10;
    // Num2 += 5;

    // Not fine with pure keyword
    // product = Num1 + Num2;
    // total = Num1 * Num2 ;

    uint n1 = 10;
    uint n2 = 20;
    
    product = n1 + n2;
    total = n1 * n2 ;
}
 
}