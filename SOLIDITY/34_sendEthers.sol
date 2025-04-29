// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

//Interface: can intercat with other contracts by declaring them as interface.
contract MyContract{
     //payable address can reciev ethers


address  payable   public owner;

constructor() {
    owner = payable(msg.sender);
}

//function to reciewv ethers
 receive() external payable{}

//fallback func when msg.data is not empty
 fallback() external payable{}


 function getBalance() public view returns (uint) {
     return address(this).balance;
 }
}

contract SendEther{
    //not recommended for sending ethers
  function sendViaTransfer (address payable _to) public payable{
      _to.transfer(msg.value); 
  }

      //not recommended for sending ethers, alwasys return bool 
  function sendViaSend(address payable _to) public payable{
     bool sent =  _to.send(msg.value); 
     require(sent, "failed to send ethers ");
  }

        //recommended and alwasys return bool 
  function sendViaCall(address payable _to) public payable{
    ( bool sent, bytes memory data )=  _to.call{ value: msg.value}(""); 
     require(sent, "failed to send ethers ");
  }
}