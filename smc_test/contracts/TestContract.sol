//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract TestContract 
{
	uint public counter = 0;

	constructor() {
		IncrementCounter();
	}

	function IncrementCounter() public
	{
		counter ++;
	}
}
