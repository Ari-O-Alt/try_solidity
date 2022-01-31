// SPDX-License-Identifier: MIT
pragma solidity >=0.4.24;

// we specify our smart contract
contract MyContractV4 {
    // we create a mapping - a mapping is an associative array and works with key-value pairs
    // it takes a callback as a param and returns a data structure of the type Person
    mapping (uint => Person) public people;
    // counter to keep track how many people we ass to the people array
    uint256 public peopleCount;

    // structs let us create data structures inside smart constucts
    struct Person {
        uint _id;
        string _firstName;
        string _lastName;
    }

    function addPerson(string memory _firstName, string memory _lastName) public {
       peopleCount+=1;
       people[peopleCount] = Person(peopleCount, _firstName, _lastName);
       
    }
 
}