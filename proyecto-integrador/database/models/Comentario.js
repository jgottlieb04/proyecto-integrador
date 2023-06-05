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
        },
        created_at:{
            type: dataTypes.DATE
        },
        updated_at:{
            type: dataTypes.DATE
        }
        
    };
    let config = {
        tableName: 'comentarios',
        timestamps: false, //Si la tabla no tiene los campos created_at y updated_at
        underscored: true, //Si los nombres de las columnas en la db tienen guiones bajos en lugar de camelCase.
    };
  





    const Comentario= sequelize.define(alias,cols,config);
    Comentario.associate = function (models){
        Comentario.belongsTo(models.Product,{
            as: "productos",
            foreignKey: "comentario_id"
        })
        Comentario.belongsTo(models.Usuario,{
            as: "usuarios",
            foreignKey: "comentario_id"
        })
    }
    
    return Comentario;
};