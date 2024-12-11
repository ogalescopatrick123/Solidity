// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract Bank {
    
    // maps the balance each address has deposited into the bank
    mapping(address => uint256) public deposits;  
    // event for logging the deposit information
    event Deposited(address indexed user, uint256 amount);
    
    // function for deposit
    function deposit() external payable {

        // checks if the deposited value is valid
        require(msg.value > 0, "Deposit value must be greater than zero");
        
        // stores the valid deposit
        deposits[msg.sender] += msg.value;       

        // emits Deposited event
        emit Deposited(msg.sender, msg.value);
    }   
}


