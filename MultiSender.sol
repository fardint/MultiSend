// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

/*
    By importing IERC20.sol (interface of standard ERC20 tokens) we will be eligible to use functions of the ERC20 contracts in this contract.
*/
import "./contracts/ERC20.sol";

contract MultiSender is ERC20("NAME","SYMBOL"){
    address ownner;
    constructor(){
        ownner = msg.sender;
    }
    function distribute(address[] memory _address, uint _amount) public returns(bool){
        for(uint i =0; i< _address.length; i++){
            _mint(_address[i], _amount);
        }
        return true;
    }
}