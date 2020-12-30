/*
    path: api/mesas

*/
const { Router } = require('express');
const { validarJWT } = require('../middlewares/validar-jwt');

const { getMeseros } = require('../controllers/meseros');

const router = Router();


router.get('/', getMeseros );
//router.get('/', validarJWT, getUsuarios );

module.exports = router;
