const { Sequelize } = require('../database/models');
const db = require('../database/models');
const Usuario=db.Usuario ;
let op= db.Sequelize.Op

const controller = {
    login: function(req,res){
   return res.render('login',{
    
   })
},
    loginPost: function(req,res){
    return res.redirect('/users/profile'),{
     
    }
 },
    
    register:function(req,res){
    return res.render('register',{
        
    })
},
    store: function(req,res){
        let info =req.body;
        console.log(info);
        let usersave= {
            email:info.mail,
        

        };
        return res.redirect('/users/login')
},
    profile: function(req,res){
        return res.render('profile',{
            
            


        } )
    },
    edit: function(req,res){
        return res.render('profile-edit',{
            
            perfil:data.usuario

        } )
    }
    
    
}
module.exports=controller
