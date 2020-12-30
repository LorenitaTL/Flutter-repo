const { response } = require('express');
const Producto = require('../models/producto');

const getProductos = async (req, res = response) => {

    const productos = await Producto
        .find({});

    res.json({
        ok: true,
        productos,
    })
}

const registrarProducto = async (req, res = response) => {
    try {

        const producto = new Producto(req.body);
        await producto.save();
        res.json({
            ok: true,
            producto
        });

    } catch (error) {
        console.log(error);
        res.status(500).json({
            ok: false,
            msg: 'Hable con el administrador'
        });
    }
}

const actualizarProducto = async (req, res = response) => {

    try {
        console.log(req.body);
        const { _id, nombre, descripcion, precio, disponible } = req.body;
        const producto = await Producto.findOneAndUpdate({ _id: _id }, { disponible: disponible, nombre: nombre, precio: precio, descripcion: descripcion });

        const productoActualizado = await Producto.findOne({ _id: _id });
        res.json({
            actalizado: true,
            ok: true,
            producto
        });
    } catch (error) {
        console.log(error);
        res.status(500).json({
            ok: false,
            msg: 'Hable con el administrador'
        });
    }
}

module.exports = {
    getProductos,
    registrarProducto,
    actualizarProducto
}