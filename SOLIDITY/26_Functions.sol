// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract MyContract {
     //unnamed returned values.
     function returnMany() public pure returns(uint, bool, uint ) {
         return (1, true, 1);
     }

      //named returned values.
      function returnManyTwo() public pure returns(uint x, bool y, uint z ) {
        x = 1;
        y = true;
        z = 4;
     }

       //desturcturing output
      function returnManyThree() public pure  {
             (uint a, bool b, uint c) = returnMany();

             // vaues can be left out.
             (uint x, , uint z) = returnMany(); 
     }

     // cannot use map for input/output of function, but can use array.
     function arrayInput(uint[] memory _arr) public  {
             
     }

     uint[] public myArray;
      // cannot use map for input/output of function, but can use array.
     function arrayInput() public view returns(uint[] memory)  {
          return myArray;  
     }
}


contract MyContractTwo {
     //unnamed returned values.
     function withManyInputs(
        string memory a, 
        uint b,
        bool c, 
        address d
     ) public pure returns(uint) {}

     
     // order matters
     function callWithoutKeys() public pure returns(uint){
         return  withManyInputs("hello", 3, true, address(0));
     }


     // order matters
     function callWithKeys() public pure returns(uint){
         return  withManyInputs({a:"hello", b: 3,d:address(0),  c: true});
     }
      
}