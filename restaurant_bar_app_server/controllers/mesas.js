const { response } = require('express');
const Mesa = require('../models/mesa');

const getMesas = async (req, res = response) => {

    //const desde = Number(req.query.desde) || 0;

    const mesas = await Mesa
        .find();
    //.sort('-online')
    //.skip(desde)
    //.limit(20)


    res.json({
        ok: true,
        mesas,
    })
}

const getMesasByType = async (req, res = response) => {
    //const desde = Number(req.query.desde) || 0;

    const mesas = await Mesa
        .find({ type: req.body.type });


    res.json({
        ok: true,
        mesas,
    })
}



module.exports = {
    getMesas,
    getMesasByType
}