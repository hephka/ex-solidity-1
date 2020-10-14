// SPDX-License-Identifier: MIT                 // SPDX Licence Identifier
pragma solidity >= 0.6.0;                       // Version pragma
pragma experimental ABIEncoderV2;               // Experimental pragma

/** @title Calculatrice simple. */
contract Calc {
    address private owner;

    constructor() public {
        owner = msg.sender;
    }

    /** @dev Fonction permettant l'addition de 2 nombres. 
      * nb1 Premier nombre. Type: uint.
      * nb2 Second nombre. Type: uint.
      */
    function add(uint nb1, uint nb2) public view returns (uint res) {
        require(owner == msg.sender, 'Only owner can use this function.');
        res = nb1 + nb2;
    }
    /** @dev Fonction permettant l'addition de 2 nombres. 
      * nb1 Premier nombre. Type: uint.
      * nb2 Second nombre. Type: uint.
      */
    function sub(uint nb1, uint nb2) public view returns (uint res) {
        require(owner == msg.sender, 'Only owner can use this function.');
        res = nb1 - nb2;
    }
    /** @dev Fonction permettant l'addition de 2 nombres. 
      * nb1 Premier nombre. Type: uint.
      * nb2 Second nombre. Type: uint.
      */
    function mul(uint nb1, uint nb2) public view returns (uint res) {
        require(owner == msg.sender, 'Only owner can use this function.');
        res = nb1 * nb2;
    }
    /** @dev Fonction permettant l'addition de 2 nombres. 
      * nb1 Premier nombre. Type: uint.
      * nb2 Second nombre. Type: uint.
      */
    function div(uint nb1, uint nb2) public view returns (uint res) {
        require(owner == msg.sender, 'Only owner can use this function.');
        res = nb1 / nb2;
    }
}