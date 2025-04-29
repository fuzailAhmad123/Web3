// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

// Inheritence Tree 
//         A
//        / \
//       B   C
//        \ /
//         D
  


contract A {
      event Log(string mssg );

      function foo() public virtual  {
              emit Log("Hey! A.foo() is called ");
      }

     function bar() public virtual  {
              emit Log("Hey! A.bar () is called ");
      }
}

contract B is A {
    function foo() public override  virtual  {
              emit Log("Hey! B.foo() is called ");
              A.foo();
      }

     function bar() public override  virtual  {
              emit Log("Hey! B.bar () is called ");
               super.bar();
      }
}

contract C is A {
    function foo() public override  virtual  {
              emit Log("Hey! C.foo() is called ");
              A.foo();
      }

     function bar() public override  virtual  {
              emit Log("Hey! C.bar () is called ");
               super.bar();
      }
}

// will call all functions of parnet contracts from right to left in inhenritence
contract D is B, C {
    function foo() public override(B,C)  virtual  {
              super.foo();
      }

     function bar() public override(B,C)  virtual  {
               super.bar();
      }
}