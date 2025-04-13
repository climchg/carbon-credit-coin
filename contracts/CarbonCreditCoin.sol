// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
 * @title Carbon Credit Coin (CCC)
 * @notice Each CCC represents 1 gram of verified CO₂ offset.
 *         1,000,000 CCC = 1 tonne of CO₂.
 *         Valued at $10 per tonne ($0.01 per coin) with projections
 *         reaching $50 per tonne by 2030.
 *         Issued by the Climate Change Institute and backed by
 *         certified projects (UN CDM, Verra, UCR).
 *         Can be traded, held, or redeemed as a climate-positive asset.
 * @custom:website https://carboncreditcoin.net
 * @custom:institute https://climatechangeinstitute.net
 * @custom:logo https://raw.githubusercontent.com/climchg/cocimage/main/logo.png
 */
contract CarbonCreditCoin is ERC20 {
    constructor(uint256 initialSupply) ERC20("Carbon Credit Coin", "CCC") {
        _mint(msg.sender, initialSupply);
    }
}
