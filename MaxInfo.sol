// SPDX-License-Identifier: MIT                 // SPDX Licence Identifier
pragma solidity >= 0.6.0;                       // Version pragma
pragma experimental ABIEncoderV2;               // Experimental pragma


contract MaxInfo {
    struct Person {
        address owner;
        uint fees;
    }
    struct Block {
        address miner;
        uint difficulty;
        uint gaslimit;
        uint number;
        
    }
      
    function personPicker(msg.sender, msg.value) private {
        personInfo[msg.sender] = Person(msg.value);
    }
    
    function blockPicker(block.coinbase, block.difficulty, block.gaslimit, block.number) public {
        blockInfo[block.coinbase] = Block(block.difficulty, block.gaslimit, block.number);
    }
    
}