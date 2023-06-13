const { Sequelize } = require('../database/models');
const db = require('../database/models')
const Product =db.Product //alias del modelo
let op= db.Sequelize.Op
const camisetasController = {

    detalle: (req,res) => {
        let id= req.params.id;
        let rel = {
            include: [{
                association: "comentarios", include: [{ association: "usuarios"}]
            }]
        }
        Product.findByPk(id,rel)
         .then(function(result){
            return res.render('product',{
                productos: result,
               
            })        
        })
        .catch(function(error){
            console.log(error);
        });
    },
    add: (req,res) =>{
        return res.render('product-add')
    },
    search: (req,res) =>{
        let busqueda=req.query.search;
        Product.findAll(
            {
                where:[{
                    nombre: {[op.like]:`%${busqueda}%`}}
                ]
            }
        ) .then(function(result){
            return res.render('search-results',{
                productos: result, 
                comentarios: result,
                usuarios: result
            })
        })
        .catch(function(error){
            console.log(error);
        });
        
    },
    edit: (req,res) =>{
        return res.render('product-edit')
    },
    cargar: (req,res) => {
        let {imagen,product,descripcion}= req.body
        //let usario_id = req.session.Usuario
        db.Product.create({
            imagen,
            product,
            descripcion
        })
        .then(function(result){
            result.redirect(`/users/profile/${usuario_id}`)
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
