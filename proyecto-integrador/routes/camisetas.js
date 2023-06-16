

var express = require('express');

var router = express.Router();
const ControllerC = require('../controllers/camisetasController');
/* GET users listing. */
router.get('/add',ControllerC.add);
router.post('/cargar',ControllerC.cargar);
router.post('/id/:id', ControllerC.comentar);
router.get('/id/:id', ControllerC.detalle);
router.get('/search',ControllerC.search);
router.get('/edit/:id',ControllerC.showForm)
router.post('/edit/:id',ControllerC.store)
module.exports = router;



