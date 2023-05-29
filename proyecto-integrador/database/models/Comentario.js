module.exports= function (sequelize, dataTypes){
    let alias="Comentario";
    //mapeo exacto de cada una de las columnas//
    let cols = {
        id:{
            autoIncrement: true,
            primaryKey: true,
            type: dataTypes.INTEGER, //saber bien tipos de datos(objeto adentro de objeto) porpiedades y sus metodos.
        },
        producto_id:{
            type: dataTypes.STRING,
        },
        usuario_id:{
            type: dataTypes.STRING,
        },
        comentario:{
            type: dataTypes.STRING,
        }
        
    };
    let config = {
        tableName: 'comentarios',
        timestamps: false, //Si la tabla no tiene los campos created_at y updated_at
        underscored: true, //Si los nombres de las columnas en la db tienen guiones bajos en lugar de camelCase.
    };
  





    const Comentarios= sequelize.define(alias,cols,config);

    
    return Comentarios;
};