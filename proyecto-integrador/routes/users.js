var express = require('express');
var router = express.Router();

const controller= require('../controllers/usersControllers')
router.get('/login', controller.login)

router.get('/register', controller.register)

router.get('/profile', function(req,res){
  res.send('aqui mandamo al login')
})
router.get('/edit', function(req,res){
  res.send('aqui mandamo al login')
})

module.exports=router;