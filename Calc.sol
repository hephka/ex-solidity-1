// SPDX-License-Identifier: MIT                 // SPDX Licence Identifier
pragma solidity >= 0.6.0;                       // Version pragma
pragma experimental ABIEncoderV2;               // Experimental pragma

/** @title Calculatrice simple. */
contract Calc {
    uint nb1;
    uint nb2;
    function add(uint x) pure returns (uint) {
    return x * 2;
}
}