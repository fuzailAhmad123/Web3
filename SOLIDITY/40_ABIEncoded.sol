// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

interface IER20 {
 function transfer(address , uint) external; 
}

contract Token{
     function transfer(address, uint ) external {}
}

contract AbiEncoded {
     function test(address _contract, bytes calldata data) external  {
        (bool ok, ) = _contract.call(data); 
        require(ok, "call failed ");
     }

     function encodeWithSignature(address to, uint amount) external  pure returns(bytes memory) {
        return abi.encodeWithSignature("transfer(address,uint256 )", to, amount );
     }

     function encodeWithSelector(address to,  uint amount) external  pure returns(bytes memory) {
         return abi.encodeWithSelector(IER20.transfer.selector, to, amount);
     }

      function encodeCall(address to,  uint amount) external  pure returns(bytes memory) {
         return abi.encodeCall(IER20.transfer, (to, amount));
     }

}