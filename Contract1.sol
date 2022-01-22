// we specify what version of Solidity we want to use
// SPDX-License-Identifier: MIT
pragma solidity >=0.4.24;

// we specify our smart contract
contract MyContractV1 {
    // when we'll give a value to this variable, it will be stored on the Block chain - it behaves differently compared to a local variable in a function
    string value;

    // we create a constructor that will run the first time this Smart Contract is create
    constructor () {
        value = "MyValue";
    }

// we create a getter that can be called by anyone (public) that has access to this Smart Contract on the Blockchain
// the view keyword is used because we don't really modify the value, we just view it
    function get() public view returns (string memory) {
        return value;
    }

    function set(string memory _value) public {
        value = _value;
    }
}