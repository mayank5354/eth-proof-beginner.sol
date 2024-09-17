// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyToken {
    // Public variables
    string public name;
    string public symbol;
    uint256 public totalSupply;

    // Mapping of addresses to balances
    mapping(address => uint256) public balances;

    // Constructor to initialize the token details
    constructor(string memory _name, string memory _symbol, uint256 _initialSupply) {
        name = _name;
        symbol = _symbol;
        totalSupply = _initialSupply;
        balances[msg.sender] = _initialSupply; // Assign initial supply to contract deployer
    }

    // Mint function
    function mint(address _to, uint256 _value) public {
        totalSupply += _value; // Increase total supply
        balances[_to] += _value; // Increase balance of the recipient
    }

    // Burn function
    function burn(address _from, uint256 _value) public {
        require(balances[_from] >= _value, "Insufficient balance"); // Check if the sender has enough balance
        totalSupply -= _value; // Decrease total supply
        balances[_from] -= _value; // Decrease balance of the sender
    }

    /**
     * @dev @custom:dev-run-script
     */
    function devRunScript() public {
        // Add any custom script logic here
        // This function will be executed when you set a dev run script in Remix
        // For example, you could call mint and burn functions here for testing purposes
    }
}
