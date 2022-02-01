// SPDX-License-Identifier: MIT
pragma solidity >=0.4.24;

// we specify our smart contract
contract MyContractV4 {
    // we create a mapping - a mapping is an associative array and works with key-value pairs
    // it takes a callback as a param and returns a data structure of the type Person
    mapping (uint => Person) public people;
    // counter to keep track how many people we ass to the people array
    uint256 public peopleCount;
    // this is a Solidity data type - it's like an address on the Blockchain
    address owner;
    // we create a function modifier called ownerOnly
    modifier ownerOnly() {
        // this is Solidity specific and lets us know which address is calling this function
        require(msg.sender == owner);
        _;
    }

    // structs let us create data structures inside smart constucts
    struct Person {
        uint _id;
        string _firstName;
        string _lastName;
    }
    // we set the owner of the contract in the constructor
    constructor() {
        owner = msg.sender;
    }

    function addPerson(string memory _firstName, string memory _lastName) public ownerOnly {
       incrementPeopleCount();
       people[peopleCount] = Person(peopleCount, _firstName, _lastName);
       
    }

    // this is the equivalent of a private function
    function incrementPeopleCount() internal {
        peopleCount++;
    }
 
}