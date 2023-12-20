// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract file{
    string _filehash;//state variable declared in the contract 
    address[] _users;
    address owner;

    constructor(){
        owner=msg.sender; //wallet address

    }

    modifier onlyowner{//function nee call cheste neyy modifier execute avutundhi
        require(owner==msg.sender);//require(x==y)-vere vallu access cheste vaastundhi or (x==x)-manam maname access cheste
        _;//remain function as it is gaa cheyyamani 
    }

    function filehash(string memory fh) onlyowner public {
        _filehash=fh;
    }

    function addtoken(address user) onlyowner public {
        _users.push(user);
    }

    function checktoken(address user) onlyowner public view returns(bool){
        uint i;
        for(i=0;i<_users.length;i++){
            if(user==_users[i])
                     return true;
        }
        return false;
        }

}