// SPDX-Licence_Identifier: MIT
pragma solidity ^0.8.0;
// Inheritence
// Factories (Smart contract that makes contracts)
// Interaction
contract Ownable {

    address owner; // Person who deployed Blockchain

    modifier onlyOwner() {
        require(msg.sender == owner, "must be owner");
        _;
    }
    constructor () {
         owner = msg.sender;
    }
}
// secret logic
contract SecretVault {
    string secret;

 constructor (string memory _secret) {
        secret = _secret;
    }

function getSecret() public view  returns(string memory) {
        return secret;
    }

}
// Contract that interfaces with contract
contract MyContract5 is Ownable {

address secretVault;

    constructor (string memory _secret) {
// Create new variable of secretvault V--How to create smart contract--V
        SecretVault _secretVault = new SecretVault(_secret);
        secretVault = address(_secretVault);
        super;
    }

    function getSecret() public view onlyOwner returns(string memory) {
        return SecretVault(secretVault).getSecret();
    }
}
