
// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;
contract kyc{
    address public owner;
    
    enum KYCStatus {NotSubmitted,Pending,Approved,Rejected}
    struct KYCData{
        string name;
        KYCStatus status;

    }
    mapping(address=>KYCData) public KYCrecords;
    constructor(){
        owner=msg.sender;

    }
    modifier onlyOwner{
        require(msg.sender==owner);
        _;
    }
    function submitKYC(string memory name) public {
        KYCrecords[msg.sender]=KYCData(name,KYCStatus.Pending);
    }
    function approveKYC(address _user) onlyOwner public{
        KYCrecords[_user].status=KYCStatus.Approved;
    }
    function RejectKYC(address _user) onlyOwner public{
        KYCrecords[_user].status=KYCStatus.Rejected;
    }
}