// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract coin{
    string public name="Meta Coin";
    string public symbol="MC";
    uint8 public decimals=18; //one byte allocated
    uint public totalsuply;
    mapping(address=>uint) public  balance;
    constructor(uint initialsupply) {
        totalsuply=initialsupply*10**decimals;
        balance[msg.sender]=totalsuply;
    }
    function transfer(address to,uint value) public returns(bool)  {
        require(balance[msg.sender]>value);
        balance[to]+=value;
        balance[msg.sender]-=value;
        return true;
    }
}