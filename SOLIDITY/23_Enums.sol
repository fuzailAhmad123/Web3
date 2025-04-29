// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

//You can sepcidy enums im different files and can import them
import "./Enums/ShippingEnums.sol";

contract MyContract {
    // Enum : set of values which are allowed. By default first value will the value of variable of type Enum
    // eg: Enum for shipping status

    ShippingStatus public shippingStatus;

    //  return index  - 0 -> Delivered, 1 = Rejecteed, 2 - InTransmit, 3 - Unknown 
    function get() public  view returns (ShippingStatus) {
        return shippingStatus;
    }

    function set(ShippingStatus _status) public {
        shippingStatus = _status;
    }

    function reject () public {
        shippingStatus = ShippingStatus.Rejected;
    }

    //reset to default value of enum
    function deleteStatus() public {
       delete shippingStatus;
    }
} 