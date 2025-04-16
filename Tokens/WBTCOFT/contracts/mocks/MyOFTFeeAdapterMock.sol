// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import { OFTFeeAdapter } from "../OFTFeeAdapter.sol";

// @dev WARNING: This is for testing purposes only
contract MyOFTFeeAdapterMock is OFTFeeAdapter {
    constructor(address _token, address _lzEndpoint, address _delegate) OFTFeeAdapter(_token, _lzEndpoint, _delegate) {}
}
