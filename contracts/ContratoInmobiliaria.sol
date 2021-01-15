pragma solidity >=0.4.0 <0.7.0;
pragma experimental ABIEncoderV2;

contract ContratoInmobiliaria {
    struct Contrato {
        string tipo;
        string duracion;
        uint256 valor;
        string moneda;
        string fecha_firma;
        string fecha_vencimiento;
        string cliente;
        uint256 inmueble;
    }
    // mapping(uint256 => contrato) contratos;
    Contrato[] public contratosData;

    function setContrato(
        string memory tipo,
        string memory duracion,
        uint256 valor,
        string memory moneda,
        string memory fecha_firma,
        string memory fecha_vencimiento,
        string memory cliente,
        uint256 inmueble
    ) public {
        //contratosData.length += 1
        Contrato memory con;
        con.tipo = tipo;
        con.duracion = duracion;
        con.valor = valor;
        con.moneda = moneda;
        con.fecha_firma = fecha_firma;
        con.fecha_vencimiento = fecha_vencimiento;
        con.cliente = cliente;
        con.inmueble = inmueble;
        contratosData.push(con);
    }

    function getContratos() public view returns (Contrato[] memory) {
        return contratosData;
    }
}
