var express = require('express');
var router = express.Router();

const controller= require('../controllers/usersControllers')
router.get('/login', controller.login)

router.get('/register', controller.register)

router.get('/profile', controller.profile)



module.exports=router;