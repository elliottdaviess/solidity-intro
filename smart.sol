// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

// roughly equivalent to a class
contract MyContract {
    string public hello = "hi"; //state (var)

    // datatype to hold 20byte ETH address
    address payable public seller;
    address payable public buyer;

    // custom data type
    struct Order {
        string description;
        bool completed;
    }

    // standard executable code - e.g modify state of contract
    function confirmOrder() public {
        buyer = payable(msg.sender);
    }

    // only executed once
    constructor(string memory _text) {
        hello = _text;
    }
}
