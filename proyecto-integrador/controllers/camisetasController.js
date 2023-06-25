
const db = require('../database/models')
const Product =db.Product //alias del modelo
const Comentario =db.Comentario
const Usuario =db.Usuario
let op= db.Sequelize.Op
const camisetasController = {

    detalle: (req,res) => {
        let id= req.params.id;
        let rel = { include: [{association: "usuarios"}, {association: "comentarios", include:[{association: "usuarios"}]}]
        };
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
        let info= req.body
        
        
        
        if (info.newComment != undefined){
            let nuevo = {
                comentario: info.newComment,
                usuario_id:req.session.Usuario.id ,
                producto_id:req.params.id,
                
            }
            Comentario.create(nuevo)
            .then(function(resultado){
        
                return res.redirect('/camisetas/id/'+ nuevo.producto_id)
                
              })
              .catch(function(error){
                console.log (error)
              })
        }
        

        
    },
    search: (req,res) =>{
        let busqueda=req.query.search;
        Product.findAll({
            include: [{association: "usuarios"}, {association: "comentarios", include:[{association: "usuarios"}]}],
            where:{
              [op.or]:[
              {nombre: { [op.like]: "%" + busqueda + "%" }},
              {descripcion: { [op.like]: "%" + busqueda + "%" }},
      
              ]},
      
              order: [
                ['createdAt', 'DESC']]
              })
            .then(function(result){
            //    return res.send(result)
            return res.render('search-results',{
                productos: result
            })
        })
        .catch(function(error){
            console.log(error);
        })
        
    },
    showFormUpdate: (req,res) =>{
        let id= req.params.id;
        Product.findByPk(id)
        .then((result) => {
            console.log(result);
            return res.render('product-edit',{productos: result})
        
        })
        .catch((error) => {
            console.log(error);
        }
        )
       
    },
    update:(req,res)=>{
        let id= req.params.id
        let info=req.body;
        Product.update(info, {
            where: [
                {id:id}
            ]
        })
        .then((result) => {
            return res.redirect('/camisetas/id/' + id)
        })
        .catch((error) => {
            console.log(error);
        }
        )
        
    }
    
    
    
    
   
    
    



}

        
module.exports= camisetasController
