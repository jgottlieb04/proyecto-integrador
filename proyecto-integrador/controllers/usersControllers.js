const { Sequelize } = require('../database/models');
const db = require('../database/models');
const Usuario=db.Usuario ;
const bcrypt =require('bcryptjs');
let op= db.Sequelize.Op

const controller = {
    login: function(req,res){
        if (req.session.Usuario == undefined) {
            return res.render ('login')
        }
        else{
            res.redirect("/")
        }

   
},
    loginPost: function(req,res){
        let emailbuscado= req.body.Mail;
        let contra = req.body.contra;
        let filtrado = {
            where:[{email:emailbuscado}]
        }
        Usuario.findOne( filtrado)
        .then((result)=>{
            let errors = {};
                if (emailbuscado == '') {
                    errors.message = "El mail está vacío."
                    res.locals.errors = errors;
                    return res.render('login')
                }
                if (result == null) {
                    errors.message = "Email no registrado"
                    res.locals.errors = errors;
                    return res.render('login')
                }
                if (contra == '') {
                    errors.message = "Debes poner una contraseña"
                    res.locals.errors = errors;
                    return res.render('login')
                }


            
            
            
            
            if (result != null){
                let clavecorrecta=bcrypt.compareSync(contra, result.contrasena)
                if (clavecorrecta){
                    
                    req.session.Usuario=result.dataValues
                      if (req.body.recordar != undefined) {
                          res.cookie('usuario', result.id, {maxAge: 1000 * 60 * 15})
                      }
                    return res.redirect('/users/profile')
                   
                }else {
                    errors.message = "Contraseña incorrecta"
                    res.locals.errors = errors
                    return res.render('login')
                    
                }
            }else {
                return res.render('login')
            }
            
        })
        .catch((err)=>{
            console.log(err)
        });
       
 },
    
    register:function(req,res){
        if (req.session.Usuario == undefined) {
            return res.render ('register')
        }
        else{
            res.redirect("/")
        }

   
},

    store: function(req,res){
        
        let errors = {}
        if (req.body.Mail == "") {
            errors.message = "Ingresa un Mail"
            res.locals.errors = errors
            return res.render("register")
        } else if (req.body.contra == "") {
            errors.message = "Completa la contrasena"
            res.locals.errors = errors
            return res.render("register")
        } else if (req.body.user == "") {
            errors.message = "Ingresa un usuario"
            res.locals.errors = errors
            return res.render("register")
        } else if (req.body.age == "") {
            errors.message = "Ingresa tu fecha de nacimiento"
            res.locals.errors = errors
            return res.render("register")    
        }
            else if (req.body.DNI == "") {
            errors.message = "Ingresa DNI"
            res.locals.errors = errors
            return res.render("register")}   
        
        
        else{let info =req.body;
        console.log(info);
        let usersave= {
            usuario:info.user,
            email:info.Mail,
            contrasena:bcrypt.hashSync(info.contra,10),
            foto_perfil:info.imagen,
            fecha:info.age,
            dni:info.DNI,
        

        };
        console.log(usersave)
        Usuario.create(usersave)
        .then(function(result){
            return res.redirect('/users/login')
        })
        .catch(function(error){
            console.log(error)
        });
    }
        
},
    profile: function(req,res){
        return res.render('profile',{
            
            


        } )
    },
    profile_id: function(req,res){
        let id = req.params.id;
        let rel= {
            include: [
                {association: "comentarios"}, { association: "Product"}
            ]
        }
        Usuario.findByPk(id,rel)
         .then(function(result){
            return res.render('profile',{
                usuarios: result,
               
            })        
        })
        .catch(function(error){
            console.log(error);
        });
    },
    edit: function(req,res){
        return res.render('profile-edit',{
            
            

        } )
    }
    
    
}
module.exports=controller
