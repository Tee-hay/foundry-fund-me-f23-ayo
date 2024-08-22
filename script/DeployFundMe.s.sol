// SPDX-License_Identifier: MIT

pragma solidity ^0.8.19;

import {Scripts} from "forge-std/Script.sol";
import {FundMe} from "../src/FundMe.sol";

contract DeployFundMe is Script{

    function run() external{
        vm.startBroadcast();
        FundMe fundMe = FundMe();
        vm.stopBroadcast();
    }

}
