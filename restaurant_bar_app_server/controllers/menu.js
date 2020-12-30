const { response } = require('express');
const Menu = require('../models/menu');

const getMenu = async (req, res = response) => {

    //const desde = Number(req.query.desde) || 0;

    const menu = await Menu
        .find({ _id: { $ne: req.uid } });
    //.sort('-online')
    //.skip(desde)
    //.limit(20)

    console.log('Menu', menu)

    res.json({
        ok: true,
        menu,
    })
}

module.exports = {
    getMenu
}