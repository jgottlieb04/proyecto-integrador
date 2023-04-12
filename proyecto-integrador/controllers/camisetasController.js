const data = require('../db/data')



    const camisetasController = {
    index: function(req,res){
   return res.render('product-add',{
    usuarioLogueado: false
   })
},
remera: function(req,res){
    return res.render('product',{
     usuarioLogueado: false, 
     camiseta: data.productos, 
     comentario: data.comentarios,
     perfil:data.usuario,
     

    
    })

 },
 add: function(req,res){
    return res.render('product-add',{
        usuarioLogueado: true,
        perfil:data.usuario,


    })
 },
 search: function(req,res){
    return res.render('search-results',{
        usuarioLogueado:true,
        camiseta: data.productos, 
     comentario: data.comentarios,
     perfil:data.usuario

    } )
}}
   
module.exports= camisetasController