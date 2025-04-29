// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract MyContract {
    // Data Locations: Where data is going to be stored , Memory, Storage , CallData. 
    // Storage -> data u define in it will store over block chain.
    // Memory -> data will be stored in function memory.
    // CallData -> Data will be passed in function argumnets.

   uint[] public arr;
   mapping (uint => address) public map;
   struct MyStruct{
    uint foo;
   }
   mapping (uint => MyStruct) public myStructs;


   function f() public {
    // calling _f with state variables.
     _f(arr, map, myStructs[0]); 

     //creating a copy and storing it.
      MyStruct storage myStruct = myStructs[1];

      //creating a struct in memory.
      MyStruct memory myStruct1 = MyStruct (0); 
   }

   function _f(uint[] storage _arr, mapping (uint => address) storage _map, MyStruct storage _myStruct) internal {
      //you can do with storage v ariables
   }


 // you can return memory variables 
//    function g(uint[] memory _arr) internal returns (uint[] memory) {
//     //do somthing with memory array.
//    }

//     // you can return memory variables 
//    function g(uint[] memory _arr) internal  returns (uint[] memory) {
//     //do somthing with memory array.
//    } 
 
//    function g(uint[] calldata _arr) external {
//     //do somthing with calldata array.
//    } 
}