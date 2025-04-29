// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

import "./Structs/Todo.sol";

contract MyContract {
    // Struct : these are the customized data types created by using traditional data types.

    Todo[] public todos;

    function addData(string calldata _str, bool _boo) public {
            todos.push(Todo(_str, _boo ));

            //Or 
            todos.push(Todo({text:_str, completed : _boo}));

            Todo memory todo1;
            todo1.text = "hello"; 
            todos.push(todo1);
    }    

    function getData(uint _index) public view returns (Todo memory){
        return todos[_index];
    }  


    function upateData(uint _index, string calldata _text) public {
        Todo storage todo = todos[_index];
        todo.text = _text;
    }  
}