// SPDX-License-Identifier: CC-BY-SA-4.0
pragma solidity 0.6.4;

contract BadFacucet {
    receive() external payable{

    }

    function withdraw(uint withdraw_amount) public {
        require(withdraw_amount <= 0.1 ether);
        msg.sender.transfer(withdraw_amount);
    }
}