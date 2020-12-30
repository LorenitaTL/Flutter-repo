const { response } = require('express');
const Pedido = require('../models/pedido');
const pedido = require('../models/pedido');

const getPedidos = async (req, res = response) => {

    //const desde = Number(req.query.desde) || 0;

    const pedido = await Pedido
        .find({ _id: { $ne: req.uid } });
    //.sort('-online')
    //.skip(desde)
    //.limit(20)

    console.log('Pedido', pedido)

    res.json({
        ok: true,
        pedidos_mesas: pedido,
    })
}

const nuevoPedido = async (req, res = response) => {
    try {
        console.log(req.body);
        const pedido = new Pedido(req.body);
        await pedido.save();

        res.json({
            ok: true,
            pedido
        });

    } catch (error) {
        console.log(error);
        res.status(500).json({
            ok: false,
            msg: 'Hable con el administrador'
        });
    }

}

const agregarProducto = async (req, res = response) => {
    try {
        const { _id, productos } = req.body;

        console.log("_id", _id)
        console.log("producto", productos)

        //Agregar un grupo de arrays
        const pedido = await Pedido.findByIdAndUpdate(_id, { $push: { productos: { $each: productos } } });

        //Agregar un solo elemento a un campo de array
        //const pedido = await Pedido.findByIdAndUpdate(_id, { $push: { productos: { $each: productos } } });

        res.json({
            ok: true,
            pedido
        });
    } catch (error) {
        res.status(500).json({
            ok: false,
            msg: 'Hable con el administrador'
        });

    }
}

const pedidoMesa = async (req, res = response) => {
    try {
        console.log("PEDIDO MESA")
        console.log(req.body);

        const pedido = await Pedido
            .find({ mesa: req.body.mesa, estado: req.body.estado });
        console.log(pedido);

        res.json({
            ok: true,
            pedido
        });

    } catch (error) {
        res.status(500).json({
            ok: false,
            msg: 'Hable con el administrador'
        });
    }
}

module.exports = {
    getPedidos,
    nuevoPedido,
    agregarProducto,
    pedidoMesa
}