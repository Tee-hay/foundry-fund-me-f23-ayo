//SPDX-License-Identifier: MIT

// Fund
// Withdraw

pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {DEveOpsTools} from "foundry-devops/src/DevOpsTools.sol"



contract FundFundMe is Script{
    function fundFundMe(address mostRecentlyDeployed) public{
        vm.startBroadcast();
    }
    
function run() external{
    address  mostRecentlyDeployed = DevOpsTools.get_most_deployment
        "FundMe"
        block.chainid
}
    

}

contract WithdraFundMe is Script{}