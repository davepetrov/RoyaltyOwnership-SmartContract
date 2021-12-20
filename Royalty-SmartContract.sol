pragma solidity 0.5.1;

contract Royalty{
    address public royaltyOwner;
    address public nftAddress;
    uint public royalty;
    

    function Royalty(address _nftAddress)public{
        nftAddress = _nftAddress;
    }

    function setRoyaltyOwner(address _royaltyOwner)public{
        royaltyOwner = _royaltyOwner;
    }

    function setNftAddress(address _nftAddress)public{
        nftAddress = _nftAddress;
    }

    function Royalty(address _royaltyOwner) public{
        royaltyOwner = _royaltyOwner;
    }

    function getRoyaltyOwner() public constant returns(address){
        return royaltyOwner;
    }

    function setRoyaltyOwner(address _royaltyOwner) public{
        royaltyOwner = _royaltyOwner;
    }

    function setRoyalty(uint256 _royalty) public{
        royalty = _royalty;
    }
}