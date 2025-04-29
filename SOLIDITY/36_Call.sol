// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

//Interface: can intercat with other contracts by declaring them as interface.
contract Reciever{
    event Received(address caller, uint amount, string mssg );
    
    // must be external, and send /transer forwad 2300 gas to this fallback func, call forwardss all of gas 
     fallback() external  payable {
             emit Received(msg.sender, msg.value, "fallback");
      }

      //same as of fallback, but called when mssg.data is not empty
      receive() external payable {
           emit Received(msg.sender, msg.value, "fallback");
       }

       function foo(string memory _mssg, uint _x) public payable returns(uint){
        emit Received(msg.sender, msg.value, _mssg);
         return _x + 1;
       }

}

contract Caller{
    event Response (bool success, bytes data);

    function testCallFoo(address payable _addr ) public payable {
           ( bool sent, bytes memory data )=  _addr .call{ value: msg.value, gas: 5000 }( abi.encodeWithSignature("foo(string,uint256)", "call foo", 123));
             require(sent, "failed to send ethers ");
             emit Response(sent , data);
    }

        //does not trigger fallback
      function testCallDoesNotExist(address _addr ) public  {
           ( bool sent, bytes memory data )=  _addr .call(abi.encodeWithSignature("doesNotExist()"));
             emit Response(sent , data);
    }
}
