/*
    path: api/mesas

*/
const { Router } = require('express');
const { validarJWT } = require('../middlewares/validar-jwt');

const { getMenu } = require('../controllers/menu');

const router = Router();


router.get('/', getMenu );
//router.get('/', validarJWT, getUsuarios );

module.exports = router;
