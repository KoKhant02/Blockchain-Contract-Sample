// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Token {
    string private assetName = "Viz"; // Token name
    uint256 private constant initialSupply = 100; 
    uint256 private constant requiredBalance = 100; 

    mapping(address => uint256) private balances;

    constructor() {
        require(initialSupply >= requiredBalance, "Deployer must have at least 100 Viz");
        balances[msg.sender] = initialSupply;
    }

    function balanceOf(address account) public view returns (uint256) {
        return balances[account];
    }

    function transfer(address toAccount2, uint256 amount) public returns (bool) {
        address fromAccount1 = msg.sender;
        require(balances[fromAccount1] >= amount, "Not enough balance to transfer");
        
        balances[fromAccount1] -= amount;
        balances[toAccount2] += amount;

        return true;
    }

    function getAssetName() public view returns (string memory) {
        return assetName;
    }
}

