// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract MyContract {
   //Array Remove By Shifting.
    // [1, 2, 3] -> remove(1) -> [1, 3, 3] -> [1, 3]. 
    // [1] => remoev(0) -> []

    uint[] public arr;

    function remove(uint _i) public {
        require(_i < arr.length, "index is out of bounds");

        for (uint index = _i; index < arr.length - 1; index++) {
            arr[index] = arr[index + 1];
        }
        arr.pop();
    }

    function test() external   {
        arr = [1, 2, 3, 4, 5];
        remove(2);
        // now -> [1, 2, 4, 5, 6]
        assert(arr[0] == 1);
        assert(arr[1] == 2);
        assert(arr[2] == 4);
        assert(arr[3] == 5);
        assert(arr.length == 4);

        arr = [1];
        remove(0);
        assert(arr.length == 0);

    } 

}