pragma solidity >=0.7.0 < 0.9.0;
// SPDX-License-Identifier: MIT

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

contract ore is ERC1155 {
  uint256 public constant Copper = 1;
  uint256 public constant Silver = 2;
  uint256 public constant Gold = 3;
  uint256 public constant Dimond = 4;

  constructor() ERC1155("ore") {
    _mint(msg.sender, Copper, 10**18, "" );
    _mint(msg.sender, Silver, 10**18, "");
    _mint(msg.sender, Gold, 10**18, "");
    _mint(msg.sender, Dimond, 10**18, "");
  }
}
