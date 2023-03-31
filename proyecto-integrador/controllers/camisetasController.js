let camisetas= require('../db/camisetas')

const camisetasController = {
    index: function(req,res) {
        //return res.send(bandas.lista) se muestran todas las bandas
        return res.render('camisetas',{lista: camisetas.lista })
    },
    

}

module.exports= camisetasController