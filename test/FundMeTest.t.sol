// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Test} from "forge-srtd/Test.sol";
import {FundMe} from "..src/FundMe.sol";

contract FundMeTest is Test{
    FundMe fundMe;
    function setUp()  external {
        //  us -> fundMeTest -> FundMe
         fundMe fundMe = new FundMe();
    }

        function testMinimumDollarIsFive() public{
           assertEq(fundMe.MINIMUM_USD(), 5e18);
        }

        function testOwnerIsMsgSender() public{
                console.log(fundMe.i_owner());
                console.log(msg.sender);
           assertEq (fundMe.i_owner(), address(this));
        }

    //What can we do with adresses outside our system?
    // 1. Unit
    //      - Testing a specific part of our code
    // 2. Integration
    //      - Testing how our code works with other parts of the code
    // 3. Forked
    //      - Testing our code on a simulated real environment
    // 4. Staging
    //      -nTesting our code in a real environment that is not prod
        function testPriceFeedVersionIsAccurate() public{
            uint256 version = fundMe.getVersion();
            assertEq(version, 4);


        }

     function test  FundFailsWithoutEnoughETH()   publics{
        vm.expectRevert(): // hey, the next Line, should revert!
        //assert(This tx fails/reverts)
        uint256 cat =1;

     }
}

//  us -> fundMeTest -> FundMe