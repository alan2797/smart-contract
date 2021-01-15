pragma solidity >=0.4.0 <0.7.0;
pragma experimental ABIEncoderV2;

contract ContratoInmobiliariaV2 {
    struct Contrato {
        string fecha_inicio;
        string fecha_final;
        string tipo_pago;
        string tipo;
        string entrega_pago;
        uint256 valor;
        string moneda;
        string estado;
        uint256 inmueble;
        uint256 propietario;
        uint256 cliente;
    }
    // mapping(uint256 => contrato) contratos;
    Contrato[] public contratosData;

    function setContrato(
        string memory fecha_inicio,
        string memory fecha_final,
        string memory tipo_pago,
        string memory tipo,
        string memory entrega_pago,
        uint256 valor,
        string memory moneda,
        string memory estado,
        uint256 inmueble,
        uint256 propietario,
        uint256 cliente
    ) public {
        //contratosData.length += 1
        Contrato memory con; //creacion del obj contrato
        con.fecha_inicio = fecha_inicio;
        con.fecha_final = fecha_final;
        con.tipo_pago = tipo_pago;
        con.tipo = tipo;
        con.entrega_pago = entrega_pago;
        con.valor = valor;
        con.moneda = moneda;
        con.estado = estado;
        con.inmueble = inmueble;
        con.propietario = propietario;
        con.cliente = cliente;
        contratosData.push(con);
    }

    function getContratos() public view returns (Contrato[] memory) {
        return contratosData;
    }
}
