let camisetas= require('../db/camisetas')


    const camisetasController = {
    index: function(req,res){
   return res.render('product-add',{
    usuarioLogueado: false
   })
},
remera: function(req,res){
    return res.render('product',{
     usuarioLogueado: false
    })
 },}
   
module.exports= camisetasController