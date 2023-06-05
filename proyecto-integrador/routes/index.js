var express = require('express');
var router = express.Router();
const controller= require('../controllers/indexControllers')

/* GET home page. */
router.get('/', controller.findAll);
router.get('/id/:id',controller.show)

module.exports = router;
