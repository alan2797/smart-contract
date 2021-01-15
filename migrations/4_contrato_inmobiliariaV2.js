const ContratoInmobiliariaV2 = artifacts.require("ContratoInmobiliariaV2");

module.exports = function (deployer) {
  deployer.deploy(ContratoInmobiliariaV2);
};
