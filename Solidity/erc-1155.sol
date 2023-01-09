// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;


import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract ore is ERC1155, Ownable {
  uint256 public constant Copper = 0;
  uint256 public constant Silver = 1;
  uint256 public constant Gold = 2;

  mapping (uint256 => string) private _uris;

  constructor() ERC1155("https://gateway.pinata.cloud/ipfs/QmUN1AMiPBJUkDbLAGJz9bfQ9uGQoU7rmDzLdQZFm7kUJN/{id}.json") {
    _mint(msg.sender, Copper, 10**18, "" );
    _mint(msg.sender, Silver, 10**9, "");
    _mint(msg.sender, Gold, 10**3, "");
  }

  // function uri(uint256 tokenId) override public view returns (string memory) {
  //       return(_uris[tokenId]);
  // }
    
  // function setTokenUri(uint256 tokenId, string memory uri) public onlyOwner {
  //     require(bytes(_uris[tokenId]).length == 0, "Cannot set uri twice"); 
  //     _uris[tokenId] = uri; 
  // }
}
