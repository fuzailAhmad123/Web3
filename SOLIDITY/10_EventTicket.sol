//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract EventTickets{ 
 uint  noOfTickets;
 uint  ticketPrice;
 uint  totalAmount;
 uint  startAt;
 uint  endAt;
 uint  timeRange;
 string  message = "Buy your first ticket";

 constructor(uint _ticketPrice) {
    ticketPrice = _ticketPrice;
    startAt = block.timestamp;
    endAt = block.timestamp + 7 days; 
    timeRange = (endAt - startAt) / 60 / 60 / 24;
 }

 function buyTotalTickets(uint _value) public returns(uint ticketId) {
      noOfTickets++;
      totalAmount += _value;
      ticketId = noOfTickets; 
 }

 function getTotalTicketAmount() public view returns(uint){
     return totalAmount;
 }
 
}