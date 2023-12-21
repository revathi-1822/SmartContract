// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract fund{
    address public payer; //sender
    address public payee; //receiver
    uint public amount=0;
    constructor(address _payee){
        payee=_payee;
        payer=msg.sender;
    }

    function deposit()public payable { //whenever cryptocurrenices are tranferred from one to other, "payable" will used
        require(payer==msg.sender);
        amount+=msg.value;
    }
    function withdrawl() public{
        require(msg.sender==payee);
        require(amount>0);
        (bool success,)=payable(payee).call{value:amount}("");
        require(success);
    }
}
