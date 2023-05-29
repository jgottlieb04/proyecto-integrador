const data= require('../database/models')
const Product = data.Product;
let op = data.sequelize.Op;

const indexController = {
    index: (req,res) => {

        let rel = {
            include: [{association: "commentarios"}, {association: "usuarios"}]
        }
        Product.findAll()
        .then(function(result){

            return res.render("index", { productos: result, user: {name: "Juan"}});
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
