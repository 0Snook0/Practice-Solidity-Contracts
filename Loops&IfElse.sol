// SPDX-Licence_Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract4 {
    
    //Loops
    uint[] public numbers = [1,2,3,4,5,6,7,8,9,10];

    address public owner;
// Function that is launched once when contract is deployed
    constructor() {
        owner = msg.sender;
    }

    function countEvenNumber() public view returns(uint) {
        uint count = 0;
    //Condtion start--v--Condition End---v---v---Value increase for finished loop
        for(uint i = 0; i < numbers.length; i++) {
            if(isEvenNumber(numbers[i])) {
                count++;
            }
        }
        return count;
    } 

    // Conditionals
    //If (some condition)
    //Then (do some action)
    //Else (do some other action)
    // Bool is just true or false
    function isEvenNumber(uint _number) public view returns(bool) {
        if (_number % 2 == 0) {
            return true;
        } else {
            return false;
        }
    }
// Common isOwner function
    function isOwner() public view returns (bool) {
        return(msg.sender == owner);
    }
}
