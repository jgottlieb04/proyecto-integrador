var express = require('express');
var router = express.Router();

const controller= require('../controllers/usersControllers')
router.get('/login', controller.login)
router.post('/login', controller.loginPost)

router.get('/register', controller.register)
router.post('/register', controller.store)

router.get('/profile/:id', controller.profile)

router.get('/profile-edit', controller.edit)
router.get('/search',controller.searchUser);







module.exports=router;