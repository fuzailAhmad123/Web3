// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract HashFunction {
  

     function hash(string memory _text, uint _num, address _addr ) public pure returns(bytes32 )  {
        return keccak256(abi.encodePacked(_text, _num, _addr));
     }
      
     function collission(string memory _text, string memory _anotherText) public pure returns(bytes32 ) {
           return keccak256(abi.encodePacked(_text, _anotherText ));
     }


}

contract guessTheMagicWord {
    bytes32 public anser = 0x736f6c6964697479000000000000000000000000000000000000000000000000; 

    //   magic wpord is solidity 
    function guess (string memory _word) public view returns(bool) {
         return keccak256(abi.encodePacked(_word )) == answer;
    }
}