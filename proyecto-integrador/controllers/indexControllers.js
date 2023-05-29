const data= require('../database/models')
const Product = data.Product;
let op = data.sequelize.Op;

const indexController = {
    index: (req,res) => {
        Product.findAll()
        .then(function(result){

            return res.render("products", { camisetas: result });
        })
        .catch(function(err){
            console.log(err);
        })
    }
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
