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

import "@openzeppelin/contracts/governance/TimelockController.sol";

/// @custom:security-contact support@web3mason.io
contract Web3MasonTimelock is TimelockController {
    uint256 private _minDelay = 172800;
    address[] private _proposers = [0xC6ed5651AA675D4E8D71E9B9938E534df9fAB8b5];
    address[] private _executors = [0xC6ed5651AA675D4E8D71E9B9938E534df9fAB8b5];
    address private _admin = address(0);

    constructor()
        TimelockController(_minDelay, _proposers, _executors, _admin)
    {}
}
