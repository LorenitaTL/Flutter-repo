const { response } = require('express');
const Mesero = require('../models/mesero');

const getMeseros = async (req, res = response) => {

    //const desde = Number(req.query.desde) || 0;

    const meseros = await Mesero
        .find({ _id: { $ne: req.uid } });



    res.json({
        ok: true,
        meseros,
    })
}



module.exports = {
    getMeseros
}