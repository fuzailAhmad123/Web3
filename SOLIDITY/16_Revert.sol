//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract MyContract{ 
//SOLIDITY ERROR HANDLING: using Revert Handler, not useed much as cannot add conditions in it.

function getResult(uint _v1, uint _v2) public pure returns(string memory) {
    uint sum = _v1 + _v2;
     if (sum < 0 || sum > 255){
       revert( "Overflow occured");
      }else {
        return  "Overflow not occured";
      }
}
}