//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract MyContract{ 
 //VIEW : This keyword is used with those functions whoch only reds the values

uint Num1 = 1;
uint Num2 = 2;


// Simply reads the data
function redValues() public view returns(uint, uint){
    return (Num1,Num2);
}

//If i want to calculate
//With view keyword i can only read the values of State Variables, but cannot update them. But can update local variables
function getCalculatedValues() public view returns(uint product, uint total){
    // Not fine with view keyword
    // Num1 += 10;
    // Num2 += 5;

    // That is totally fine.
    product = Num1 + Num2;
    total = Num1 * Num2 ;
}

function getCalculatedValues2() public returns(uint product, uint total){
    Num1 += 10;
    Num2 += 5;

    // That is totally fine.
    product = Num1 + Num2;
    total = Num1 * Num2 ;
}
 

}
