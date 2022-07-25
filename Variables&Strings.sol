// SPDX-Licence_Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract2 {
    // State variables (stored on blockchain)
    int256 public myInt = 1;
    uint public myUint  = 1;
    uint256 public myUint256  = 1;
    uint8 public myUint8 = 1;

    string public myString = "Hello, World!";
    // Makes string act similar to array
    bytes32 public myBytes32 = "Hello, World!";
    // How to store addresses
    address public myAddress = 0x26AFb53C96B5ECF12CEcFe8b7C4691B7Bb1CA29e;

    struct MyStruct {
        uint256 myUint256;
        string myString;
    }

    MyStruct public myStruct = MyStruct(1, "Hello, World!");

    // Local variables (used within function)
    function getValue() public pure returns(uint) {
        uint value = 1;
        return value;
    }
 }
