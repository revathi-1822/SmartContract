// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;
contract tender {
    uint[] _tenderids;
    address[] _tendercomapnies;
    string[] _tenderdata;
    string[] _tenderquotes; //some ammount(expected ammount)
    uint[] _tenderbidderids;
    uint[] _tenderstatus;
    address[] _biddercompanies;
    string[] _bidderammount;

    address owner;
    constructor() {
        owner=msg.sender;
    }
    modifier onlyowner{
        require(owner==msg.sender);
        _;
    }
    function createTender(uint Tid,address tenderer,string memory req,string memory quote)onlyowner public {
        _tenderids.push(Tid);
        _tendercomapnies.push(tenderer);
        _tenderdata.push(req);
        _tenderquotes.push(quote);
        _tenderstatus.push(0); //tender is in open

    }
    function viewTenders() public view returns (uint[] memory,address[] memory,string[] memory,string[] memory,uint[] memory){
        return (_tenderids,_tendercomapnies,_tenderdata,_tenderquotes,_tenderstatus);        
    }
    function createBid(uint tenderid,address bidder,string memory bidammount)public {
        _tenderbidderids.push(tenderid);
        _biddercompanies.push(bidder);
        _bidderammount.push(bidammount);                                 

    }
    function viewBid() public view returns(uint[] memory,address[] memory,string[] memory){
        return(_tenderbidderids,_biddercompanies,_bidderammount);
    }

    

}