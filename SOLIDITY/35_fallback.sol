// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

//Interface: can intercat with other contracts by declaring them as interface.
contract MyContract{
    event Log(string func, uint gas);
    
    // must be external, and send /transer forwad 2300 gas to this fallback func, call forwardss all of gas 
     fallback() external  payable {
             emit Log("fallback", gasleft());
      }

      //same as of fallback, but called when mssg.data is not empty
      receive() external payable {
            emit Log("receive", gasleft());
      
       }

       function getBalance() public view returns(uint){
        return address(this).balance; 
       }

}

contract SendToFallabck{
      function transferToFallback(address payable _to) public payable{
                    _to.transfer(msg.value); 
        }

        function callFallback(address payable _to) public payable{
        
         }
}
