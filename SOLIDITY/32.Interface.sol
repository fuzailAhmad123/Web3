// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

//Interface: can intercat with other contracts by declaring them as interface.
contract MyContract{
  uint public count;
  
  function increment() external {
    count++;
  }

}

interface MyContractI {
     function increment() external; 
}

contract Mycounter {
    function incrementcounter(address _counter) external {
         MyContractI(_counter).increment(); 
  }
}
