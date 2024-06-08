// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Solve} from "../src/solve.sol";

contract SolveTest is Test {
    Solve public solve;

    function setUp() public {
        solve = new Solve(0xf988Ebf9D801F4D3595592490D7fF029E438deCa);
        
    }

    function test_solve() public {
        solve.soolve();
       
    }

    function test_canTransferNft() public {
        solve.safeTransfer();
    }
}
