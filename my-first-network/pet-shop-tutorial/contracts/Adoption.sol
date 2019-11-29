pragma solidity ^0.5.0;

// The store has space for 16 pets at a given time, and they already have a database of pets. We are making a dapp which associates an Ethereum address with a pet to be adopted.
contract Adoption {
    // Solidity is a statically-typed language, meaning data types like strings, integers, and arrays must be defined. Solidity has a unique type called an address. Addresses are Ethereum addresses, stored as 20 byte values. Every account and smart contract on the Ethereum blockchain has an address and can send and receive Ether to and from this address.
    // We've defined a single variable: adopters. This is an array of Ethereum addresses. Arrays contain one type and can have a fixed or variable length. Public variables have automatic getter methods.
    address[16] public adopters;
    // Adopting a pet
    // In Solidity the types of both the function parameters and output must be specified. In this case we'll be taking in a petId (integer) and returning an integer.
    function adopt(uint petId) public returns (uint) {
        // We use the require() statement to ensure the ID is within range
        require(petId >= 0 && petId <= 15);

        // If the ID is in range, we then add the address that made the call to our adopters array. The address of the person or smart contract who called this function is denoted by msg.sender
        adopters[petId] = msg.sender;
        return petId;
    }

    // Retrieving the adopters
    // The view keyword in the function declaration means that the function will not modify the state of the contract
    function getAdopters() public view returns (address[16] memory) {
        return adopters;
    }



}