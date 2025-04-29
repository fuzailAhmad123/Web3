// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;


contract A {
    string public name = "contract A"; 
   function getName() public view returns(string memory) {
     return name;
   }
}

contract C is A {
    //correct way to update the inherited state variable- shdowing inherintence 
   constructor() {
    name = "contract C";
   }

//    C.getName() will return the "Contract C "

}
