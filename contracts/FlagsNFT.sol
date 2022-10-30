//SPDX-License-Identifier:MIT
pragma solidity >=0.4.0 <0.9.0;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol"; //importing ERC-721 contract from Openzeppelin
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol"; //importing ERC-721URIStorage contract from Openzeppelin
contract FlagsNFT is ERC721URIStorage {

    uint256 internal tokenId; // tokenId represents number of NFTs
    constructor() ERC721("FlagsNFT","FLAGS"){  //NFT Token name : FlagsNFT,Symbol : FLAGS
    }
    // mintNFT function is to mint the NFT of tokenId to given address with metadata URI of given _tokenURI
    function mintNFT(address _to,string calldata _tokenURI) public returns(uint256){
       
       _mint(_to,tokenId); //calls mint function from ERC721 contract
       _setTokenURI(tokenId,_tokenURI); //calls setTokenuRI function fromERC721URIStorage contract
       return tokenId; //returns the current tokenId number
       tokenId++; //increments the tokenID

    }
}