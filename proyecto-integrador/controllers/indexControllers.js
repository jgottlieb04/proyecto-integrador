const data= require('../db/camisetas')

const controller = {
    index: function(req, res){
        res.render('index',{
            productos:data.productos,
        })
        
    }
}

module.exports=controller