pragma solidity 0.5.1;

contract Royalty{
    address public royaltyOwner;
    address public nftAddress;
    uint public royalty;
    
    function Royalty(address _nftAddress)public{
        nftAddress = _nftAddress;
    }
    
    event Transfer(address indexed from, address indexed to);

    function setRoyaltyOwner(address _royaltyOwner)public{
        royaltyOwner = _royaltyOwner;
    }

    function transferOwnership(address _oldAddress, address _newAddress)public{
        require(_oldAddress == royaltyOwner);
        royaltyOwner = _newAddress;
        emit(Transfer(_oldAddress, _newAddress, tokenId);)
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