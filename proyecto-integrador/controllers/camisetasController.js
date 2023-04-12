let camisetas= require('../db/data')


    const camisetasController = {
    index: function(req,res){
   return res.render('product-add',{
    usuarioLogueado: false
   })
},
remera: function(req,res){
    return res.render('product',{
     usuarioLogueado: false, 
     camiseta: camisetas.productos, 
     comentario: camisetas.comentarios
    })
 },
 search: function(req,res){
    return res.render('search-results',{
        usuarioLogueado:true

    } )
}}
   
module.exports= camisetasController