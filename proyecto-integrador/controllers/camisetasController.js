const db = require('../database/models')
const camiseta =db.Product //alias del modelo
let op=db.sequelize.op;

const camisetasController = {

    detalle: (req,res) => {
        let id= req.params.id;
        camiseta.findbyPK(id)
         .then(function(result){
            return res.render('product',{
                productos: result
            })        
        })
        .catch(function(error){
            console.log(error);
        });
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
