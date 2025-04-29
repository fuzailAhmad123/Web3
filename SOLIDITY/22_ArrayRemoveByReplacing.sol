// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract MyContract {
    //Array Replace From End - Directly deleting will create a gap in array, to keep the array compact move element to lat and delete.
    // [1, 2, 3] -> remove(1) -> [1, 3, 3] -> [1, 3]. 
    // [1] => remoev(0) -> []

    uint[] public arr;

    function remove(uint _i) public {
        require(_i < arr.length, "index is out of bounds");

         arr[_i] = arr[arr.length - 1];
         arr.pop();
    }

    function test() external   {
        arr = [1, 2, 3, 4];
        remove(1);
        // now -> [1, 4, 3]
        assert(arr.length == 3);
        assert(arr[0] == 1);
        assert(arr[1] == 4);
        assert(arr[2] == 3);
  
         // removing the last element
        remove(2);
         // now -> [1, 4]
        assert(arr.length == 2);
        assert(arr[0] == 1);
        assert(arr[1] == 4);

    }

}