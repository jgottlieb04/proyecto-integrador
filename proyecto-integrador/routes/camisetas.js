let camisetas= require('../db/camisetas') 

var express = require('express');

var router = express.Router();
const ControllerC = require('../controllers/camisetasController');
/* GET users listing. */
router.get('/product-add',ControllerC.index
);

module.exports = router;

