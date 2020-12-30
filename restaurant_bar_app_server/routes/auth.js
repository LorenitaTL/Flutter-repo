/*
    path: api/login

*/
const { Router } = require('express');
const { check } = require('express-validator');

const { crearMesa, login, renewToken } = require('../controllers/auth');
const { validarCampos } = require('../middlewares/validar-campos');
const { validarJWT } = require('../middlewares/validar-jwt');

const router = Router();



router.post('/new', [
    check('nombre','El nombre es obligatorio').not().isEmpty(),
    check('password','La contraseña es obligatoria').not().isEmpty(),
    check('email','El correo es obligatorio').isEmail(),
    validarCampos
], crearMesa );

router.post('/', [
    check('mesa','La contraseña es obligatoria').not().isEmpty(),
    check('mesero','El correo es obligatorio').not().isEmpty(),
], login );


router.get('/renew', validarJWT, renewToken );

module.exports = router;
