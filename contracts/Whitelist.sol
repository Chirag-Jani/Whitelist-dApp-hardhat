pragma solidity ^0.8.0;

contract Whitelist {
    uint8 maxWhitelistAddresses;
    mapping(address => bool) public whitelistedAddresses;
    uint8 public numAddressesWhitelisted;

    constructor(uint8 _maxWhitelistAddresses) {
        maxWhitelistAddresses = _maxWhitelistAddresses;
    }

    function addAddressToWhitelist() public {
        require(!whitelistedAddresses[msg.sender], "User alredy Whitelisted!!");
        require(
            numAddressesWhitelisted < maxWhitelistAddresses,
            "Limit Reached"
        );
        whitelistedAddresses[msg.sender] = true;
        numAddressesWhitelisted += 1;
    }
}
