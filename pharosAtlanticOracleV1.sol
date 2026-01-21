
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract PharosActivitiesOracleV1 {

    address public owner;
    uint256 public cooldown;

    mapping(address => uint256) public lastActionTime;

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    constructor(address _owner, uint256 _cooldown) {
        owner = _owner;
        cooldown = _cooldown;
    }

    /**
     * @dev Records user activity if cooldown has passed
     * Marked virtual for V2 inheritance
     */
    function recordActivity() external virtual {
        require(
            block.timestamp >= lastActionTime[msg.sender] + cooldown,
            "Cooldown active"
        );
        lastActionTime[msg.sender] = block.timestamp;
    }

    /**
     * @dev Update cooldown (owner only)
     */
    function setCooldown(uint256 _newCooldown) external onlyOwner {
        cooldown = _newCooldown;
    }
}
