//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract MyContract{ 
 
   uint[] data;
   uint8 k = 0;

    function whileLoop() public returns(uint[] memory) {
        while (k < 5){ 
            k ++;
            data.push(k);
        }
        return data;
    }

    function doWhileLoop() public returns(uint[] memory) {
        do { 
            k ++;
            data.push(k);
        }while (k < 5);
        return data;
    }

    function forLoop() public returns(uint[] memory) {
       for ( uint i = 7 ; i< 10; i++){ 
                data.push(i);
        }
        return data;
    }


}