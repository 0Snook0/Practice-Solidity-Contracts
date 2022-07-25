// SPDX-Licence_Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract3 {
    //Mapping-V(ID)--V(What is stored in blockchain)
    mapping(uint => string) public names;
    mapping(uint => Book) public books;
    //Mapping withing mapping used for NFT's 
    mapping(address => mapping(uint => Book)) public myBooks;

// Struct for variables that indicate specific book authors and titles
    struct Book {
        string title;
        string author;
    }

    constructor() {
        names[1] = "adam";
        names[2] = "bruce";
        names[3] = "snook";
    }
// adding book
    function addBook(
        uint _id, 
        string memory _title, 
        string memory _author
        ) public {
        books[_id] = Book(_title, _author);
    }
// Adding book thats linked to address
    function addMyBook(
        uint _id, 
        string memory _title, 
        string memory _author
        ) public {
        // msg.sender is whomever calls contract
        myBooks[msg.sender][_id] = Book(_title, _author);
    }
        
        
}
