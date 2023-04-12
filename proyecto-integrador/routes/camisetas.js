let camisetas= require('../db/data') 

var express = require('express');

var router = express.Router();
const ControllerC = require('../controllers/camisetasController');
/* GET users listing. */
router.get('/product-add',ControllerC.index
);
router.get('/', ControllerC.remera)

router.get('/search',ControllerC.search)

module.exports = router;

