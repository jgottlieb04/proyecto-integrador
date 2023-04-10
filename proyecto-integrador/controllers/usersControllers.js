const controller = {
    login: function(req,res){
  res.render('login')
},
    register:function(req,res){
    return res.render('register')
}
}
module.exports=controller
