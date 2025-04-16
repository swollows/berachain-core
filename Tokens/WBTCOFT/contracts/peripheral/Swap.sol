// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { IERC20, SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/**
 * @title Swap
 * @dev Exchange IERC20 tokens with the same number of decimals with a 1:1 exchange rate.
 */
contract Swap is Ownable {
    using SafeERC20 for IERC20;

    error DecimalsMismatch();
    error NativeGasNotAccepted();

    IERC20 public immutable fromToken;
    IERC20 public immutable toToken;

    event Swapped(address indexed user, uint256 amount);
    event Withdrawn(IERC20 token, uint256 amount);

    constructor(IERC20 _fromToken, IERC20 _toToken) Ownable(msg.sender) {
        if (IERC20Metadata(address(_fromToken)).decimals() != IERC20Metadata(address(_toToken)).decimals()) {
            revert DecimalsMismatch();
        }
        fromToken = _fromToken;
        toToken = _toToken;
    }

    function swap(uint256 _amount) external {
        fromToken.safeTransferFrom(msg.sender, address(this), _amount);
        toToken.safeTransfer(msg.sender, _amount);
        emit Swapped(msg.sender, _amount);
    }

    function withdraw(IERC20 _token, uint256 _amount) external onlyOwner {
        _token.safeTransfer(msg.sender, _amount);
        emit Withdrawn(_token, _amount);
    }

    fallback() external {
        revert NativeGasNotAccepted();
    }

    receive() external payable {
        revert NativeGasNotAccepted();
    }
}
