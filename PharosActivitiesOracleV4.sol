// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./PharosActivitiesOracleV3.sol";

interface IGotchipusNFT {
    function balanceOf(address owner) external view returns (uint256);
}

contract PharosActivitiesOracleV4 is PharosActivitiesOracleV3 {

    IGotchipusNFT public gotchipusNFT;

    constructor(
        address _owner,
        uint256 _cooldown,
        address _gotchipusNFT
    )
        PharosActivitiesOracleV3(_owner, _cooldown)
    {
        gotchipusNFT = IGotchipusNFT(_gotchipusNFT);
    }

    /**
     * @dev Records activity only if user owns Gotchipus NFT
     * Inherits cooldown + event logic from v3
     */
    function recordActivity() public  override {
        require(
            gotchipusNFT.balanceOf(msg.sender) > 0,
            "Gotchipus NFT required"
        );

        super.recordActivity();
    }
}
