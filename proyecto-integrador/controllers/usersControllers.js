const { Sequelize } = require('../database/models');
const db = require('../database/models');
const Usuario=db.Usuario ;
let op= db.Sequelize.Op

const controller = {
    login: function(req,res){
   return res.render('login',{
    
   })
},
    storelogin: function(req,res){
        return res.redirect('/users/profile')
},
    register:function(req,res){
    return res.render('register',{
        
    })
},
    store: function(req,res){
        return res.redirect('/users/login')
},
    profile: function(req,res){
        return res.render('profile',{
            
            perfil:data.usuario,
            productos:data.productos,
            comentarios:data.comentarios


        } )
    },
    edit: function(req,res){
        return res.render('profile-edit',{
            
            perfil:data.usuario

        } )
    }
    
    
}
module.exports=controller
