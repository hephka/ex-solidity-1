// SPDX-License-Identifier: MIT                 // SPDX Licence Identifier
pragma solidity ^0.6.0;                         // Version pragma
pragma experimental ABIEncoderV2;               // Experimental pragma

/** @title Logger. -> Fonctions de types: internal. */
contract Logger {                               // Declaration du contract
    address[] private  logs;                    // Declaration privée de logs -> array qui contient des éléments de type: adress.
    /** @dev Push l'adresse de l'utilisateur dans logs. */
    function log() internal {
        logs.push(msg.sender);
    }
    /** @dev Retourne l'adresse du dernier utilisateur. */
    function getLast() internal view returns(address) {
        return logs[logs.length - 1];
    }
    /** @dev Retourne l'adresse de l'utilisateur demandé.
      * @param _pos Position de l'utilisateur dans logs.
      */
    function getVisitorByPosition(uint _pos) internal view returns(address) {
        return logs[_pos - 1];
    }
    /** @dev Retourne un array de toutes les adresses des utilisateurs. */
    function getAll() internal view returns(address[] memory) {
        return logs;
    }
}