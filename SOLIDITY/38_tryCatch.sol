// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

//Interface: can intercat with other contracts by declaring them as interface.
contract Foo {

  address public owner;
 
   constructor (address _owner) {
    require(_owner != address(0), "invalid address");
    assert(_owner != 0x0000000000000000000000000000000000000001);
    owner = _owner; 
   }

   function myFunc(uint _x) public pure returns(string memory) { 
    require(_x != 0 ,"invalid input");
    return "my func was called"; 
   }
}

contract Bar{
    event Log(string mssg);  
    event LogBytes(bytes data); 

    Foo public foo;

    constructor() {
        //This foo constructor will be used for eg of try/catch for external call
         foo = new Foo(msg.sender);
    }

    function tryCatchExternalCall(uint _i) public {
        try foo.myFunc(_i) returns (string memory result) {
             emit Log(result); 
        } catch {
             emit Log("external call failed");
        }
    }

       function tryCatchNewContract(address _owner) public {
        try new Foo(_owner) returns (Foo foo) {
             emit Log("foo created"); 
        } catch Error(string memory reason){
             emit Log(reason);
        } catch (bytes memory reason){
             emit LogBytes(reason);
        }
    }
}