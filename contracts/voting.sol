// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract voting{
    uint[3] _votes=[0,0,0];
    mapping (address=>bool) _voters;
    function castvote(uint id) public {
        require(!_voters[msg.sender]);
        if(id==1)
            _votes[0]+=1;
        else if(id==2)
            _votes[1]+=1;
        else if(id==3)
            _votes[2]+=1;
        _voters[msg.sender]=true;

    }
    function res() public view returns(uint[3] memory){ 
        return _votes;
    }
}