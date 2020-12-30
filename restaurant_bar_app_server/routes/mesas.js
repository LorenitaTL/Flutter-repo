/*
    path: api/mesas

*/
const { Router } = require('express');
const { validarJWT } = require('../middlewares/validar-jwt');

const { getMesas, getMesasByType } = require('../controllers/mesas');

const router = Router();


router.get('/', getMesas);
router.post('/filtrar-mesas', getMesasByType);
//router.get('/', validarJWT, getUsuarios );

module.exports = router;
