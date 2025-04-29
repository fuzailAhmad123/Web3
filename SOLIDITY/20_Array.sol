// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract MyContract {
   //Array
   uint[] public myArr;
   uint[] public myArrTwo = [1,2,3];

    //oprations on array.
    //    myArrTwo.push(20);
    //    myArrTwo.pop(); 
    //   uint len = myArrTwo.length;
    //   delete myArrTwo[2]; // it does not change the length of array, just changes its value to deafault value


   //Creating a fixed size array, with initial values as 0.
   uint[10] public myArrThree;

   function get(uint i) public view returns(uint){
        return myArrTwo[i]; 
   }

   // Functions can return full array, but avoid for array than can grow indefinitely in size. 
    function getArray() public view returns(uint[10] memory){
        return myArrThree;
   }

   function createMemoryArray() external pure returns(uint[] memory)  {
     uint[] memory a = new uint[](5); //of length 5
     return a;
   }
}