const data= require('../db/data')

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
            usuarioLogueado:true,
            perfil:data.usuario,
            productos:data.productos,
            comentarios:data.comentarios


        } )
    },
    edit: function(req,res){
        return res.render('profile-edit',{
            usuarioLogueado:true,
            perfil:data.usuario

        } )
    }
    
    
}
module.exports=controller
