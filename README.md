Token Solidity Contract

Watch the Video Tutorial
https://www.loom.com/share/ea6ab513d418443a803326a78d36f8a2?sid=582086a1-a99b-404b-b230-c34b72c30f4a

This Solidity program defines a simple ERC20-like token contract with minting and burning functionalities. The contract allows for the creation and destruction of tokens, and maintains a balance mapping for token holders.

Description

The MyToken contract implements basic functionalities to handle a custom token on the Ethereum blockchain. It includes:

Public variables to store the token's details (name, abbreviation, and total supply).
A mapping to keep track of each address's balance.
A mintToken function to create new tokens and add them to a specified address.
A burnToken function to destroy tokens from a specified address, ensuring the address has enough balance to burn the tokens.
This contract serves as a simple introduction to creating and managing custom tokens using Solidity.

Getting Started

Executing Program

To run this program, you can use Remix, an online Solidity IDE. Follow these steps:

Go to the Remix website at Remix.

Create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., MyToken.sol).

Copy and paste the following code into the file:

// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // public variables here
    string public tokenName = "Stoic Musashi";
    string public tokenAbbreveation = "STM";
    uint public totalSupplyInNetwork = 0;

    // mapping variable here
    mapping (address => uint) public balances;

    // mint function
    function mintToken(address _userAddress, uint _amount) public {
        totalSupplyInNetwork += _amount;
        balances[_userAddress] += _amount;
    }

    // burn function
    function burnToken(address _userAddress, uint _amount) public {
        if (_amount <= balances[_userAddress]) {
            totalSupplyInNetwork -= _amount;
            balances[_userAddress] -= _amount;
        }
    }
}
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile MyToken.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the MyToken contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the mintToken and burnToken functions. Use the interface provided by Remix to input the necessary parameters and execute the functions.

Help

If you encounter any issues, ensure the following:

The Solidity compiler version is set correctly.
The address used in function calls is valid.
The balance of the address is sufficient for burning tokens.
For additional help, use the Remix documentation or community forums.

Authors

MetaCrafter mayank5354
Mayank@5354

License

This project is licensed under the MIT License.# MyToken Smart Contract

