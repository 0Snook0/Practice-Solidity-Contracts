// SPDX-Licence_Identifier: MIT
pragma solidity ^0.8.0;

contract Counter {
    //Code goes here...
    uint public count = 0;

    //Write function (cost gas)
    function incrementCount() public {
        count = count + 1;
    }
}   
