// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;


import "./PharosActivitiesOracleV2.sol";


contract PharosActivitiesOracleV3 is PharosActivitiesOracleV2 {


/// @notice Emitted when a user records activity

event ActivityRecorded(address indexed user, uint256 timestamp);


constructor(address _owner, uint256 _cooldown)

PharosActivitiesOracleV2(_owner, _cooldown)

{}


/**

* @dev Records activity + emits hook event

* Same logic as v1/v2, no behavior change

*/

function recordActivity() public virtual  override {

require(

block.timestamp >= lastActionTime[msg.sender] + cooldown,

"Cooldown active"

);


lastActionTime[msg.sender] = block.timestamp;


emit ActivityRecorded(msg.sender, block.timestamp);

}

}
