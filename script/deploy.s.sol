// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

import "forge-std/Script.sol";
import "../src/Logbook.sol";

contract DeployLogbook is Script {
    function run() external {
        vm.startBroadcast();

        logbook logbookInstance = new logbook(
            "Logbook", // name
            "LGBK", // symbol
            "NOT_IMPLEMENTED", // metadata folder uri
            0, // free mints
            100, // mints per address
            "NOT_IMPLEMENTED", // opensea contract metadata url
            true, // is mint active?
            0x3EDfd44082A87CF1b4cbB68D6Cf61F0A40d0b68f // valid signer
        );

        vm.stopBroadcast();
    }
}