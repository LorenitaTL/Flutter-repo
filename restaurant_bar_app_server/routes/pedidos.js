/*
    path: api/mesas

*/
const { Router } = require('express');
const { validarJWT } = require('../middlewares/validar-jwt');

const { getPedidos, nuevoPedido, agregarProducto, pedidoMesa } = require('../controllers/pedidos');

const router = Router();


router.get('/', getPedidos);

router.post('/nuevo-pedido', nuevoPedido)

router.post('/agregar-producto', agregarProducto)

router.post('/obtener-pedido', pedidoMesa)
//router.get('/', validarJWT, getUsuarios );

module.exports = router;
