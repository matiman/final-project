var MyDeFi = artifacts.require('./MyDeFiProject.sol');

module.exports = function (deployer) {
  deployer.deploy(MyDeFi,"0x6b175474e89094c44da98b954eedeac495271d0f","0x5d3a536e4d6dbd6114cc1ead35777bab948e3643");
};