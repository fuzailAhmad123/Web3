//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract MyContract{
// Data types In Solidty: 1.Value Data Types(Boolean, Integer, Fixed Pint Numbers, Address, Bytes and String, Enums), 2. Reference Data Types(Array, Struct, Mapping). 

//BOOLEAN
bool public isTrue; //by default false.
bool public isFalse = true;

//UINT
uint public uintNum; //unsigned integer, no negative value allowed (default equals to uint256).
uint8 public num2; // uint8 -> 0 to 2 ** 8 - 1 // 255
uint256 public num3; //uint256 -> 0 yo 2 ** 256 - 1, or more than that is 

//INT
int256 public num4; // negative numbers are also allowed; ranges from -2**255 to 2*2**255 

int public minInt = type(int).min;
int public maxInt = type(int).max;

//BYTES
//bytes and string are genraly same, but byte aves you GAS at time of deployment.
// Bytes , represent sequesnce of bytes, generally of two types.
// ---fixed-sized-bytes array, ---dynam ic-sized-bytes-array

bytes1 public a = 0xb5; // [1101110]

//ADDRESS
address public address1;
address public myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

//DEAFULT VALUES
bool public defaultBool; //false
uint public defaultNum; //0
int public defaultNum2; //0
address public defaultAddress; // 0x0

 
}