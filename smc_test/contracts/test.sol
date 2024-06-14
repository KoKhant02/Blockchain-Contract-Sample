// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract LiteralExamples {
    // Integer literals
    uint256 public decimalLiteral = 12345;
    uint256 public hexLiteral = 0xABCD;
    uint256 public scientificNotation = 1e3; // 1 * 10^3

    // Boolean literals
    bool public trueLiteral = true;
    bool public falseLiteral = false;

    // String literals
    string public greeting = "Hello, Solidity!";

    // Hexadecimal literals
    bytes public hexLiterals = hex"48656c6c6f"; // "Hello" in ASCII

    // Address literals
    address public exampleAddress = 0x1234567890AbcdEF1234567890aBcdef12345678;

    // Fixed-size array literals
    uint[3] public fixedArray = [1, 2, 3];
}

