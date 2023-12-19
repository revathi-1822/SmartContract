// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract sensor{
    string[] _temp;
    string[] _humidity;
    function insertvalues(string memory temp,string memory humidity) public {
        _temp.push(temp);
        _humidity.push(humidity);
    }

    function displaydata() public view returns(string[] memory,string[] memory){
        return(_temp,_humidity);
    }

    function displaylastvalue() public  view returns(string memory,string memory){
        uint i=_temp.length;
        return(_temp[i-1],_humidity[i-1]);
    }

}