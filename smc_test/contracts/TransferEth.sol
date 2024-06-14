// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract TransferEth {
    // Function to transfer ETH
    function transfer(address payable _to, uint256 _amount) public payable {
        require(msg.value == _amount, "Sent value must match the specified amount");
        _to.transfer(_amount);
    }
}
