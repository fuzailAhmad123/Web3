// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

//Interface: can intercat with other contracts by declaring them as interface.
contract Car{

  address public owner;
  string public model;
  address public carAdd;

  constructor(address _addrOwner, string memory _model) payable {
    owner = _addrOwner;
    carAdd = address(this );
    model= _model; 
  }
}

contract CarFactory{
    Car[] cars;

    function create(address _owner, string memory model) public  {
        Car car = new Car(_owner, model);
        cars.push(car);
    }

    function create2(address _owner, string memory model, bytes32 _salt) public  {
        Car car = new Car{salt:  _salt}(_owner, model);
        cars.push(car);
    }

     function create2AndPAYETHER(address _owner, string memory model, bytes32 _salt) public payable     {
        Car car = new Car{value: msg.value,  salt:  _salt}(_owner, model);
        cars.push(car);
    }

    function getCar(uint _index) public view returns(address owner, string memory model,address carAddr, uint balance ){
        Car car = cars[_index];

        return (car.owner(), car.model( ), car.carAdd(), address(car).balance); 
    } 
}