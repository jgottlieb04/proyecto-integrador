const db = require('../database/models')
const Product =db.Product //alias del modelo

const camisetasController = {
    remera: function(req,res) {

        let id= req.params.id;
        Product.findbyPK(id)
        .then(function(result){
            return res.render('product',{
                productos: result
            })
        })
    },
    add: function(req,res){
        return res.render('product-add',{usuario: result    
        })
    },
    search: function(req,res){
        return res.render('search-results',{
            productos: result, 
            comentarios: result,
            usuarios: result
        })
    }


}

        
module.exports= camisetasController
/*
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
*/
