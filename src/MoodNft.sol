// SPDX-License Identifier: MIT

pragma solidity ^0.8.18;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import {Base64} from "@openzeppelin/contracts/utils/Base64.sol";
import {Script, console} from "forge-std/Script.sol";

contract MoodNft is ERC721 {
    // errors
    error ERC721Metadata__URI_QueryFor_NonExistentToken();
    error MoodNft__CantFlipMoodIfNotOwner();

    uint256 private s_tokenCounter;
    string private s_sadSvgImageUri;
    string private s_happySvgImageUri;

    enum Mood {
        HAPPY,
        SAD
    }

    mapping(uint256 => Mood) private s_tokenIdToMood;

    constructor(string memory sadSvgImageUri, string memory happySvgImageUri) ERC721("Mood Nft", "MN") {
        s_tokenCounter = 0;
        s_sadSvgImageUri = sadSvgImageUri;
        s_happySvgImageUri = happySvgImageUri;
    }

    function mintNft() public {
        _safeMint(msg.sender, s_tokenCounter);
        s_tokenIdToMood[s_tokenCounter] = Mood.HAPPY;
        s_tokenCounter++;
    }

    function flipMood(uint256 tokenId) public {
        // only want the NFT owner to be able to flip the mood
        if (!_isAuthorized(_ownerOf(tokenId), msg.sender, tokenId)) {
            revert MoodNft__CantFlipMoodIfNotOwner();
        }

        if (s_tokenIdToMood[tokenId] == Mood.HAPPY) {
            s_tokenIdToMood[tokenId] = Mood.SAD;
        } else {
            s_tokenIdToMood[tokenId] = Mood.HAPPY;
        }
    }

    function _baseURI() internal pure override returns (string memory) {
        return "data:application/json;base64,";
    }

    function tokenURI(uint256 tokenId) public view override returns (string memory) {
        if (ownerOf(tokenId) == address(0)) {
            revert ERC721Metadata__URI_QueryFor_NonExistentToken();
        }
        string memory imageURI = s_happySvgImageUri;

        if (s_tokenIdToMood[tokenId] == Mood.HAPPY) {
            imageURI = s_happySvgImageUri;
        } else {
            imageURI = s_sadSvgImageUri;
        }
        console.log("imageURI is:", imageURI);

        // this constructs the token URI for an NFT, which is a string that points to a JSON file containing metadata about the NFT
        // imageURI is the URI for the image of the NFT (data:image/svg+xml;base64) wrapped around the base64 encoded image (data:application/json;base64)
        // the final results is a string that starts wtih "data:application/json;base64," followed by the base64 encoded JSON metadata string

        // first we concatenate the NFT metadata string using abi.encodepacked and turned it into a bytes object and encoded that bytes object into base64, combined that with a base uri, and turned that whole thing into a string and returned it
        return string(
            abi.encodePacked(
                _baseURI(), // "data:application/json;base64,"
                Base64.encode(
                    bytes( // redundant bytes() call here, but it's fine
                        abi.encodePacked(
                            '{"name":"',
                            name(), // You can add whatever name here
                            '", "description":"An NFT that reflects the mood of the owner, 100% on Chain!", ',
                            '"attributes": [{"trait_type": "moodiness", "value": 100}], "image":"',
                            imageURI,
                            '"}'
                        )
                    )
                )
            )
        );
    }

    // getter functions

    function getHappySVG() public view returns (string memory) {
        return s_happySvgImageUri;
    }

    function getSadSVG() public view returns (string memory) {
        return s_sadSvgImageUri;
    }

    function getTokenCounter() public view returns (uint256) {
        return s_tokenCounter;
    }
}
