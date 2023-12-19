// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract bank{
    uint public bal=1000;

    function withdraw(uint value) public {
        if(value<=bal){
            bal=bal-value;
        }
    }

    function deposit(uint value) public {
        bal=bal+value;
    }
}