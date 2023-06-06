const db= require('../database/models')
const Product = db.Product; //alias del modelo
// let op = db.sequelize.Op;

const indexController = {
    index: function(req,res) {

        // let rel = {
        //     include: [{association: "comentarios"}, {association: "usuarios"}]
        // }

        Product.findAll()
            .then(function(result){

                return res.render("index", { 
                    productos: result, comentarios: result
                })
            })
            .catch(function(error){
                console.log(error);
            });
    },
    
    
}



/*const controller = {
    index: function(req, res){
        res.render('index',{
            productos:data.productos,
            comentarios:data.comentarios,
            usuario:data.usuario
        })
        
    }
}
*/
module.exports=indexController
