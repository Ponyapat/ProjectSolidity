pragma solidity >=0.7.0 < 0.9.0;
// SPDX-License-Identifier: MIT

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract CryptoCharacToken is ERC721, Ownable {
    constructor(string memory _name, string memory _symbol)
        ERC721(_name, _symbol) 
    {}

    uint256 count;

    uint256 fee = 0.01 ether;

    struct Charac {
        string name;
        uint256 id;
        uint256 dna;
        uint8 class;
        uint8 rare;
    }

    Charac[] public characs;

    event NewCharac(address indexed owner, uint256 id, uint256 dna);

    function _createRandomNum(uint256 _mod) internal view returns (uint256) {
        uint256 randomNum = uint256(
            keccak256(abi.encodePacked(block.timestamp, msg.sender))
        );
        return randomNum % _mod;
    }
}