// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import {Test, console2} from "forge-std/Test.sol";
import {VaultLogic, Vault, SetUp} from "../src/GreeterVault.sol";
import "forge-std/console.sol";

contract CounterTest is Test {
    SetUp public su;
    bytes32 password =
        0x7465737412340000000000000000000000000000000000000000000000000000;

    function setUp() public {
        su = new SetUp{value: 10 ether}(password);
    }

    function test_SetUp() public view {
        console2.logAddress(su.logic());
    }

    /*function testFuzz_SetNumber(uint256 x) public {
        counter.setNumber(x);
        assertEq(counter.number(), x);
    } */
}
