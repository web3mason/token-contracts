/*
  __    __        _      _____                                       _          
 / / /\ \ \  ___ | |__  |___ /   /\/\    __ _  ___   ___   _ __     (_)  ___    
 \ \/  \/ / / _ \| '_ \   |_ \  /    \  / _` |/ __| / _ \ | '_ \    | | / _ \   
  \  /\  / |  __/| |_) | ___) |/ /\/\ \| (_| |\__ \| (_) || | | | _ | || (_) |  
   \/  \/   \___||_.__/ |____/ \/    \/ \__,_||___/ \___/ |_| |_|(_)|_| \___/   
                                                                                
                                  Web3Mason.io                                  
                                                                                
*/

// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/draft-ERC20Permit.sol";
import "./utils/TokenVesting.sol";
import "./utils/Recoverable.sol";
import "./utils/TransferBatch.sol";

/// @custom:security-contact support@web3mason.io
contract Web3MasonToken is
    ERC20,
    Ownable,
    ERC20Permit,
    TokenVesting,
    Recoverable,
    TransferBatch
{
    constructor() ERC20("Web3Mason", "W3M") ERC20Permit("Web3Mason") {
        _mint(msg.sender, 100_000_000_000 * 10**decimals());
    }

    // The following functions are overrides required by Solidity.
    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal override(ERC20, TokenVesting) {
        super._beforeTokenTransfer(from, to, amount);
    }
}
