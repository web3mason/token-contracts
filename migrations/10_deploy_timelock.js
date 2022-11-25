const Web3MasonTimelock = artifacts.require('Web3MasonTimelock');



module.exports = async (deployer) => {
  await deployer.deploy(Web3MasonTimelock);
};
