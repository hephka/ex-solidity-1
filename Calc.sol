// SPDX-License-Identifier: MIT                 // SPDX Licence Identifier
pragma solidity >= 0.6.0;                       // Version pragma
pragma experimental ABIEncoderV2;               // Experimental pragma

/** @title Calculatrice.
  * @author Franck Thevenin as Hephka.
  * @notice Vous pouvez additionner, soustraire, multiplier et diviser deux nombres <uint>.
  * @dev Ces fonctions ne coûtent pas de ressources et retourne le résultat de l'opération demandé seulement pour l'utilisateur ayant déployé ce contrat.
  */
contract Calc {
    address private owner;                      // Déclaration de owner <adress>

    constructor() public {
        owner = msg.sender;
    }

    /** @dev Fonction permettant l'addition de 2 nombres. 
      * @param nb1 Premier nombre. <uint>.
      * @param nb2 Second nombre. <uint>.
      */
    function add(uint nb1, uint nb2) public view returns (uint res) {
        require(owner == msg.sender, 'Only owner can use this function.');
        res = nb1 + nb2;
    }
    /** @dev Fonction permettant l'addition de 2 nombres. 
      * @param nb1 Premier nombre. <uint>.
      * @param nb2 Second nombre. <uint>.
      */
    function sub(uint nb1, uint nb2) public view returns (uint res) {
        require(owner == msg.sender, 'Only owner can use this function.');
        res = nb1 - nb2;
    }
    /** @dev Fonction permettant l'addition de 2 nombres. 
      * @param nb1 Premier nombre. <uint>.
      * @param nb2 Second nombre. <uint>.
      */
    function mul(uint nb1, uint nb2) public view returns (uint res) {
        require(owner == msg.sender, 'Only owner can use this function.');
        res = nb1 * nb2;
    }
    /** @dev Fonction permettant l'addition de 2 nombres. 
      * @param nb1 Premier nombre. <uint>.
      * @param nb2 Second nombre. <uint>.
      */
    function div(uint nb1, uint nb2) public view returns (uint res) {
        require(owner == msg.sender, 'Only owner can use this function.');
        res = nb1 / nb2;
    }
}