const ContratoInmobiliaria = artifacts.require("ContratoInmobiliaria");

module.exports = function (deployer) {
  deployer.deploy(ContratoInmobiliaria);
};
