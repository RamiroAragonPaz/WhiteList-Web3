//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;


contract Whitelist {

    uint8 public maxWhitelistedAddresses;

    mapping(address => bool) public whitelistedAddresses;

    uint8 public numAddressesWhitelisted;

    constructor(uint8 _maxWhitelistedAddresses) {
        maxWhitelistedAddresses =  _maxWhitelistedAddresses;
    }

    function addAddressToWhitelist() public notWhitelistFull notWhitelisted{
        whitelistedAddresses[msg.sender] = true;
        numAddressesWhitelisted += 1;
    }

    modifier notWhitelisted(){
        require(!whitelistedAddresses[msg.sender], "Sender has already been whitelisted");
        _;
    }
    modifier notWhitelistFull(){
        require(numAddressesWhitelisted < maxWhitelistedAddresses, "More addresses cant be added, limit reached");
        _;
    }
}

