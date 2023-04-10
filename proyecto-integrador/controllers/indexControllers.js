const controller = {
    index: function(req, res){
        res.render('index',{
            usuarioLogueado: true
        })
        
    }
}

module.exports=controller