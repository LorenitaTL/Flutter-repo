/*
    path: api/mesas

*/
const { Router } = require('express');

const { getProductos, registrarProducto, actualizarProducto } = require('../controllers/productos');

const router = Router();

router.get('/', getProductos);

router.post('/registrar-producto', registrarProducto);

router.post('/actualizar-producto', actualizarProducto);


module.exports = router;
