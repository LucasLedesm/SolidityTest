// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.9;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

//v0.8/interfaces/AggregatorV3interface.sol";

contract FundMe{
    mapping (address => uint256) public addressToAmountFunded;



    function fund() public payable{
        addressToAmountFunded[msg.sender] += msg.value;
    }
    function getVersion() public view returns (uint256) {
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x3c6Cd9Cc7c7a4c2Cf5a82734CD249D7D593354dA);
        return priceFeed.version();
    }
}