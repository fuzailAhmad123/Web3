//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract MyContract{ 
//SOLIDITY ERROR HANDLING: using assert statement

bool public  result;


function checkResult(uint _val1, uint _val2) public {
    uint sum = _val1 + _val2;
    assert(sum <= 255);
    result = true;
}

function getResult() public view  returns(string memory) {
     if (result ==true){
       return  "Overflow occured";
      }else {
        return  "Overflow not occured";
      }
}
}