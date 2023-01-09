// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract token is ERC20 {
    constructor() ERC20("CryptoCoin", "CRX") {

    }

    function getcoin(uint coin) public {
        uint the_coin = coin*1000000000000000000;
        _mint(msg.sender, the_coin);
    }

    function burncoin(uint coin) public {
        uint the_coin = coin*1000000000000000000;
        _burn(msg.sender, the_coin);
    }
}