// SPDX-Licence_Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    //Arrays------------------v      v Keeping things in a group that you want to pass around within contract
    //type of Array, [] to show its a array, where its stored, the actual data in array 
    uint[] public uintArray = [1, 2, 3];
    string[] public stringArray = ["apple", "banna", "carrot"];
    string[] public values;
    uint256[][] public array2d = [[1, 2, 3], [4, 5, 6]];
    //Manipulating Arrays
    function addValue(string memory _value) public {
        values.push(_value);
    }
    
    function valueCount() public view returns(uint) {
        return values.length;
    }
}
