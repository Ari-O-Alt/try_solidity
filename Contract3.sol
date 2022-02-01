// SPDX-License-Identifier: MIT
pragma solidity >=0.4.24;

// we specify our smart contract
contract MyContractV3 {

    // we create a public array with data structures of type Person
    Person[] public people;
    // counter to keep track how many people we ass to the people array
    uint256 public peopleCount;

    // structs let us create data structures inside smart constucts
    struct Person {
        string _firstName;
        string _lastName;
    }

    function addPerson(string memory _firstName, string memory _lastName) public {
       people.push(Person(_firstName, _lastName));
       incrementPeopleCount();
    }

    // this is the equivalent of a private function
    function incrementPeopleCount() internal {
        peopleCount++;
    }
 
}