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
     cargar: (req,res) => {
        let {imagen, nombre , descripcion}= req.body
        let usuario_id = req.session.Usuario.id
        db.Product.create({
            imagen,
            nombre,
            descripcion,
            usuario_id
        })
        .then((data) => {
            res.redirect("/")
        })
        .catch(function(error){
            console.log(error)
        })
    },
    
    comentar: (req,res) => {
        return res.render('product')
    },
    search: (req,res) =>{
        let busqueda=req.query.search;
        Product.findAll(
            {
                where:[{
                    nombre: {[op.like]:`%${busqueda}%`}},
                    
                ],
                order:[['created_at','DESC']]
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
   
    
    



}

        
module.exports= camisetasController
