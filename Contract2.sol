// SPDX-License-Identifier: MIT
pragma solidity >=0.4.24;

// we specify our smart contract
contract MyContractV2 {
    // instead of having a getter, we can make this variable public and we have access to it directly
    // we don't need a constuctor to set the default value of this variable, we can set it here directly
    // constant =  if we want to make the variable unchangable - if so, we must remove the setter since we can't change the value of constants
    string public /* constant */ stringValue = "My String Value";
    bool public boolValue = true;
    int public intValue = 1; // this can be signed (can be negative - have the MINUS sign in front of it)
    uint public uintValue = 2; // this can't be signed (can't have negative values)
    enum State {Waiting, Ready, Active} // enum type
    State public theState; // a variable  called theState of type State enum

    constructor() {
        theState = State.Waiting; // we set the value of the theState variable
    }

    function set(string memory _stringValue) public {
        stringValue = _stringValue;
    }

    function activate() public {
        theState = State.Active;
    }

    function isActive() public view returns(bool) {
        return theState == State.Active;
    }
}