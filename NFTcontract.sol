// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Simple Counter Contract
/// @notice A beginner-friendly counter that can be incremented, decremented, or reset
contract Counter {
    uint256 public count; // Current counter value
    address public owner; // Contract owner

    /// @notice Set deployer as owner
    constructor() {
        owner = msg.sender;
    }

    /// @notice Restrict some functions to the owner
    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    /// @notice Increase the counter by 1
    function increment() public {
        count += 1;
    }

    /// @notice Decrease the counter by 1 (cannot go below 0)
    function decrement() public {
        require(count > 0, "Counter cannot go below zero");
        count -= 1;
    }

    /// @notice Reset the counter to 0 (owner only)
    function reset() public onlyOwner {
        count = 0;
    }

    /// @notice Get the current counter value
    function getCount() public view returns (uint256) {
        return count;
    }
}
