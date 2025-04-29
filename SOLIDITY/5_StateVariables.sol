//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract MyContract{
    // STATE VARIABLES: Which are accesaable outside the Smart Contrats and Stored iver the Block Chain.

    string public myState;
    uint public myNum;
    bytes public bytesString = "Hello this is bytes string";

    string public defaultText = "Hello my default text!";
    uint public defaultNum = 32;
    bytes public defaultBytes;

    uint[] myNums;  

    constructor(string memory _stringVal, uint _uintVal) {
      myState = _stringVal;
      myNum = _uintVal;
    }

    function updateVal(string memory _stringVal, uint _uintVal)  public {
      myState = _stringVal;
      myNum = _uintVal;
    }
}
