// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

import "hardhat/console.sol"; //Added console.log statements to log key actions and state changes in the contract.

contract Eligibility {
    uint public age;

    function SETAge(uint _age) public {
        age = _age;
    }

    function DoAssert() public view {

        assert(age >= 18 );
        console.log("Congratulations! You are eligible to vote.");
    }

    function DoRequire() public view {

        require(age >= 18, "You are NOT eligible to vote");

        console.log("Congratulations! You are eligible to vote.");
    }

    function DoRevert() public view {

        if (age < 18 ) {
            revert("You are NOT eligible to vote");
        }
        else {
            console.log("Congratulations! You are eligible to vote.");
        }
    }
}
