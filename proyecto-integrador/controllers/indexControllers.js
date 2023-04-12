
const data= require('../db/data')

const controller = {
    index: function(req, res){
        res.render('index',{
            productos:data.productos,
            comentarios:data.comentarios,
            usuario:data.usuarios
        })
        
    }
}

module.exports=controller