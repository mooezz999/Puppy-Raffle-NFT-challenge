// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Solve} from "../src/solve.sol";

contract SolveTest is Test {
    Solve public solve;

    function setUp() public {
        solve = new Solve();
        
    }

    function test_solve() public {
        solve.solveTheChallenge();
       
    }

    function test_canTransferNft() public {
        solve.solveTheChallenge();
        solve.safeTransfer();
    }
}
