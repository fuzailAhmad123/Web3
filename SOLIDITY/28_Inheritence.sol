// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

// eg: Inheritence Graph 
//         A
//        / \
//        B   C
//        /\   /\
//         D E  F


contract A {
   function foo() public pure virtual returns(string memory) {
    return "A";
   }
}

// Other Contracts inherited from A.
contract B is A {
    //Override a>foo()
   function foo() public pure virtual override returns(string memory) {
    return "B ";
   }
}

contract C is A {
    //Override a>foo()
   function foo() public pure virtual override returns(string memory) {
    return "C ";
   }
}

//Contracts can inherit multiple contracts, hwen func called which is presetn in multiple parent contracts it seraches from left to right, in depth search
contract D is B, C {
    //D.foo() will return C, and will overrride C's func
    function foo() public pure virtual override(B,C) returns(string memory) {
         super.foo();
    }
}

//Contracts can inherit multiple contracts, hwen func called which is presetn in multiple parent contracts it seraches from left to right, in depth search
contract E is C, B {
    //E.foo() will return B, and will overrride B's func
    function foo() public pure virtual override(C,B) returns(string memory) {
         super.foo();
    }
}