// SPDX-License Identifier: MIT

pragma solidity ^0.8.18;

import {Test} from "forge-std/Test.sol";
import {BasicNft} from "../../src/BasicNft.sol";
import {DeployBasicNft} from "../../script/DeployBasicNft.s.sol";

contract BasicNftTest is Test {
    DeployBasicNft public deployer;
    BasicNft public basicNft;
    string public constant PUG =
        "ipfs://bafybeig37ioir76s7mg5oobetncojcm3c3hxasyd4rvid4jqhy4gkaheg4/?filename=0-PUG.json";
    address public USER = makeAddr("user");
    // the purpose of this code is to set up a fresh instance of the BasicNft contract before each test -> ensures each test runs in a clean environment

    function setUp() public {
        // this creates a new instance of the Deploy contract
        deployer = new DeployBasicNft();
        // calls the run function of the Deploy contract instance
        // the run function is expected to deploy the BasicNft contract and return its instance. This instance is then stored in the basicNft variable
        basicNft = deployer.run();
    }

    function testNameIsCorrect() public view {
        // strings are a byte array in Solidity, so we can't compare them directly
        string memory expectedName = "Doggie";
        string memory actualName = basicNft.name();
        // assert(expectedName == actualName);
        assert(keccak256(abi.encodePacked(expectedName)) == keccak256(abi.encodePacked(actualName)));
    }

    function testCanMintAndHaveABalance() public {
        vm.prank(USER);
        basicNft.mintNft(PUG);
        assert(basicNft.balanceOf(USER) == 1);
        assert(keccak256(abi.encodePacked(basicNft.tokenURI(0))) == keccak256(abi.encodePacked(PUG)));
    }

    function testSymbolIsCorrect() public view {
        string memory expectedSymbol = "DOG";
        string memory actualSymbol = basicNft.symbol();
        assert(keccak256(abi.encodePacked(expectedSymbol)) == keccak256(abi.encodePacked(actualSymbol)));
    }

    function testTokenCounterIncrement() public {
        uint256 initialTokenCounter = basicNft.getTokenCounter();
        vm.prank(USER);
        basicNft.mintNft(PUG);
        uint256 finalTokenCounter = basicNft.getTokenCounter();
        assert(finalTokenCounter == initialTokenCounter + 1);
    }

    function testTokenURI() public {
        vm.prank(USER);
        basicNft.mintNft(PUG);
        string memory actualURI = basicNft.tokenURI(0);
        assert(keccak256(abi.encodePacked(actualURI)) == keccak256(abi.encodePacked(PUG)));
    }

    // function testMintingByNonOwner() public {
    //     address nonOwner = makeAddr("nonOwner");
    //     vm.prank(nonOwner);
    //     try basicNft.mintNft(PUG) {
    //         assert(false);
    //     } catch Error (string memory) {
    //         assert(true);
    //     }
    // }
}
