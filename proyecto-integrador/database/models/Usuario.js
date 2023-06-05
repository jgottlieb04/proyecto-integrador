module.exports= function (sequelize, dataTypes){
    let alias="Usuario";
    //mapeo exacto de cada una de las columnas//
    let cols = {
        id:{
            autoIncrement: true,
            primaryKey: true,
            type: dataTypes.INTEGER, //saber bien tipos de datos(objeto adentro de objeto) porpiedades y sus metodos.
        },
        email:{
            type: dataTypes.STRING,
        },
        contraseña:{
            type: dataTypes.STRING,
        },
        foto_perfil:{
            type: dataTypes.STRING,
        },
        fecha:{
            type: dataTypes.DATE,
        },
        dni:{
            type: dataTypes.INTEGER,
        },
        created_at:{
            type: dataTypes.DATE
        },
        updated_at:{
            type: dataTypes.DATE
        }
        
    };
    let config = {
        tableName: 'usuarios',
        timestamps: false, //Si la tabla no tiene los campos created_at y updated_at
        underscored: true, //Si los nombres de las columnas en la db tienen guiones bajos en lugar de camelCase.
    };
  





    const Usuario= sequelize.define(alias,cols,config);

    Usuario.associate = function(models){

        Usuario.hasMany(models.Product,{
            as: "productos",
            foreignKey: "usuario_id"

        })
        Usuario.hasMany( models.Comentario , {
            as: "comentarios",
            foreingKey: "comentario_id",
            timestamps:  false
        });
    }

    return Usuario;
};
