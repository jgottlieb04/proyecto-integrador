var express = require('express');
var router = express.Router();

const controller= require('../controllers/usersControllers')
router.get('/login', controller.login)
router.post('login', controller.storelogin)

router.get('/register', controller.register)
router.post('/register', controller.store)

router.get('/profile', controller.profile)

router.get('/profile-edit', controller.edit)







module.exports=router;