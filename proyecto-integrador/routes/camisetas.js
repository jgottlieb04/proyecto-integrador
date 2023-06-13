

var express = require('express');

var router = express.Router();
const ControllerC = require('../controllers/camisetasController');
/* GET users listing. */
router.get('/add',ControllerC.add);
router.post('/add',ControllerC.cargar);

router.get('/id/:id', ControllerC.detalle);
router.get('/search',ControllerC.search);
router.get('/edit',ControllerC.edit)
module.exports = router;

