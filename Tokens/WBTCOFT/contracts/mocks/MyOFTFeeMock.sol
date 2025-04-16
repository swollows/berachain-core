// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import { OFTFee } from "../OFTFee.sol";

// @dev WARNING: This is for testing purposes only
contract MyOFTFeeMock is OFTFee {
    constructor(
        string memory _name,
        string memory _symbol,
        address _lzEndpoint,
        address _delegate
    ) OFTFee(_name, _symbol, _lzEndpoint, _delegate) {}

    function mint(address _to, uint256 _amount) public {
        _mint(_to, _amount);
    }
}
