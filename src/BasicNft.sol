// SPDX-License Identifier: MIT

pragma solidity ^0.8.18;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract BasicNft is ERC721 {
    uint256 private s_tokenCounter;
    mapping(uint256 => string) private s_tokenIdToUri;
    address private _owner;

    constructor() ERC721("Doggie", "DOG") {
        s_tokenCounter = 0;
        _owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == _owner, "Only owner can call this function");
        _;
    }

    function mintNft(string memory tokenUri) public onlyOwner {
        s_tokenIdToUri[s_tokenCounter] = tokenUri;
        // safeMint function makes their balance plus 1 and it sets up their token counter 
        _safeMint(msg.sender, s_tokenCounter);
        s_tokenCounter ++;
    }

    function tokenURI(uint256 tokenId) public view override returns(string memory) {
        return s_tokenIdToUri[tokenId]; 
    }


    // getter functions

    function getTokenCounter() public view returns(uint256) {
        return s_tokenCounter;
    }

}