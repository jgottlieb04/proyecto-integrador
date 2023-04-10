const controller = {
    login: function(req,res){
   return res.render('login',{
    usuarioLogueado: false
   })
},
    register:function(req,res){
    return res.render('register',{
        usuarioLogueado: false
    })
},
    profile: function(req,res){
        return res.render('profile',{
            usuarioLogueado:true

        } )
    }
}
module.exports=controller
