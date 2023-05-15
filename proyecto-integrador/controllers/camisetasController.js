const data = require('../database/models')
const product=data.Product //alias del modelo



    const camisetasController = {
    index: function(req,res){
   return res.render('product-add',{
   
   })
},
remera: function(req,res){
    return res.render('product',{
        camiseta: data.productos, 
        comentario: data.comentarios,
        perfil:data.usuario,
     

    
    })

 },
 add: function(req,res){
    return res.render('product-add',{
         perfil:data.usuario,


    })
 },
 search: function(req,res){
    return res.render('search-results',{
        camiseta: data.productos, 
        comentario: data.comentarios,
        perfil:data.usuario

    } )
}}
   
module.exports= camisetasController