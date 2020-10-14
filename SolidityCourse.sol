// SPDX-License-Identifier: MIT                 // SPDX Licence Identifier
pragma solidity ^0.6.0;                         // Version pragma
pragma experimental ABIEncoderV2;               // Experimental pragma

import './Logger.sol' as logger;                // import de ./Logger.sol

/** @title Tracé Solidity. Fonctions de types: public. Certaines fontions du contrat font appellent aux fonctions déclarées dans le contrat Logger. */
contract SolidityCourse is logger.Logger {      // Declaration du contract
    address private owner;                      // Declaration privée de owner -> type: adress

    constructor() public {                      // Initialisation de la variable owner.
        owner = msg.sender;                     // Ici, owner est l'adresse de l'utilisateur.
    }
    /** @dev Retourne l'adresse de l'utilisateur. */
    function whoIsOwner() public returns(address) {
        log();
        return owner;
    }
    /** @dev Retourne l'adresse du dernier utilisateur. */
    function getLastVisitor() public returns(address) {
        address lastVisitor = getLast();
        log();
        return lastVisitor;
    }
    /** @dev Retourne l'adresse de l'utilisateur en position _pos.
      * @param _pos Position de l'utilisateur recherché. Type: uint.
      */
    function getNthVisitor(uint _pos) public returns(address) {
        address nthVisitor = getVisitorByPosition(_pos);
        log();
        return nthVisitor;
    }
    /** @dev Retourne une liste de tous les utilisateurs. */
    function getAllVisitors() public view returns(address[] memory) {
        require(owner == msg.sender, 'Only owner can use this function.');

        return getAll();
    }
}