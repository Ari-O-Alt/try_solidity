// SPDX-License-Identifier: MIT
pragma solidity >=0.4.24;

// we specify our smart contract
contract MyContractV5 {
    // a mapping holding key-value pairs of addresses and their balances
    mapping(address => uint256) public balances;
    // we create a variable for the address/ wallet
    // IMPORTANT - every address inside a smart contract that accepts Ether must use the "payable" modifier
    address payable wallet;

    // we set the value of the wallet inside the constuctor
    constructor(address payable _wallet){
        wallet = _wallet;
    }
    
    function buyToken() public payable {
        // msg.sender - the address that calls this function
        // buy tokens - every time we buy a token, the balance of the caller of this function increases by one;
        balances[msg.sender] +=1;
        // msg.value - the value of the token the caller just bought
        // // send Ether to a wallet provided as a param in the constructor when the smart contract was ran
        wallet.transfer(msg.value);
    }
 
}