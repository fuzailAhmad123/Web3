 // SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

//Interface: can intercat with other contracts by declaring them as interface.
contract MyContract{
     //payable address can reciev ethers


address  payable   public owner;

constructor() {
    owner = payable(msg.sender);
}

// function to deposit
function deposit() public payable {

}

function nodeposit() public  {
    
}

function withdraw() public  {
    uint amount = address(this).balance;
     (bool success, ) = owner.call{value:  amount}("");
     require(success, "failed to send ");
}

function transefer(address payable _to, uint _amount) public  {
       (bool success, ) = _to.call{value:  _amount}("");
     require(success, "failed to send ");
} 
}
