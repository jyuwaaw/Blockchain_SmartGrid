const NRG = artifacts.require("NRG");
 
module.exports = function (deployer) {
    deployer.deploy(NRG,NRG.address)
};