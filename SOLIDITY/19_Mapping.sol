// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract MyContract {
    mapping(address => uint) public myMap;

     function getAddress(address _addr) public view returns(uint) {
        //mapping always returns a value, if not set will return the default value.
        return myMap[_addr]; 
     }


     function setAddress(address _add, uint _i) public {
         myMap[_add] = _i;
     }


     function removeAddress(address _addr) public {
          delete myMap[_addr];
     }   
}


contract NestedMapping{
    mapping(address => mapping  (uint => bool)) public nestedMap;

     function getAddress(address _addr, uint _i) public view returns(bool) {
        // you can get values from nested mapping even its not initialized.
        return nestedMap[_addr][_i]; 
     }


     function setAddress(address _add, uint _i, bool _boo) public {
          nestedMap[_add][_i] = _boo;
     }


     function removeAddress(address _addr, uint _i) public {
          delete nestedMap [_addr][_i];
     }   
}
  