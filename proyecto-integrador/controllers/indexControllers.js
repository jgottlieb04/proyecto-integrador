const db= require('../database/models')
const Product = db.Product; //alias del modelo
// let op = db.sequelize.Op;

const indexController = {
    index: function(req,res) {

        // let rel = {
        //     include: [{association: "comentarios"}, {association: "usuarios"}]
        // }

        Product.findAll({
            order:[
                ['created_at','DESC'],
            ],
        }
            
        )
            .then(function(result){

                return res.render("index", { 
                    productos: result, comentarios: result, usuarios:result
                })
            })
            .catch(function(error){
                console.log(error);
            });
    },
    cerrarSesion: function(req, res){
        res.clearCookie('usuario');
        res.clearCookie('connect.sid');
        res.redirect("/")
    }

    
    
}



module.exports=indexController
