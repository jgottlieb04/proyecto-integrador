let camisetas= require('../db/camisetas') 

var express = require('express');
const camisetasController = require('../controllers/camisetasController');
var router = express.Router();

/* GET users listing. */
router.get('/',camisetasController.index
);

module.exports = router;

