// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract A {
      //Visibility: public, private , internal, external

      //privcate - only in this contract
      function privateFunc() private pure returns(string memory){
        return "private func called!";
      }

      // public can be called from any contract
      function testPrivateFunc() public pure returns(string memory){
        return privateFunc();
      }

      //internal - can be called in only this and inhereted contracts
     function internalFunc() internal pure returns(string memory){
        return "internal function called";
      } 

      function testInternalFunc() public pure  virtual   returns(string memory){
        return internalFunc();
      }

        function publicFunc() public pure returns(string memory){
        return "public function called";
      } 

    function extrenalFunc() internal pure returns(string memory){
        return "external function called";
      } 

    //    function testExternalFunc() public pure returns(string memory){
    //     return externalFunc(); 
    //   }


    //  State variables 
    string public a = "A";
    string private b ="B";
    string internal c = "C";
    //cannot use external, will not compile
     
      
}

contract B is A {
      function testInternalFunc() public pure override  returns(string memory){
        return internalFunc();
      }
}
