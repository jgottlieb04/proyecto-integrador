var express = require('express');
var router = express.Router();
const indexController= require('../controllers/indexControllers')

/* GET home page. */
router.get('/', indexController.index);
router.post("/", indexController.cerrarSesion)

//router.get('/id/:id',indexController.product)

module.exports = router;
