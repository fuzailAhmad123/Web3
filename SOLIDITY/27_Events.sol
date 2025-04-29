// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract MyContract {
    // EVENT : can be used to get data from blockcghain, and can save lots of money. I n event declaration, only three parameters can be indexed 
    // Indexed parameters helps you filter the logs, using indexed parameters 

    event Log(address indexed sender, string msg);
    event AnotherLog();

    function Test() public {
      emit Log(msg.sender, "Hello this is Log!");
      emit Log(msg.sender, "Hello EVM");
      emit AnotherLog();
    }
}
