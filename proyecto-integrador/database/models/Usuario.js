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
        }
        
    };
    let config = {
        tableName: 'usuarios',
        timestamps: false, //Si la tabla no tiene los campos created_at y updated_at
        underscored: true, //Si los nombres de las columnas en la db tienen guiones bajos en lugar de camelCase.
    };
  





    const Usuarios= sequelize.define(alias,cols,config);

    Usuarios.associate = function(models){

        Usuarios.hasMany(models.Product,{
            as: "products",
            foreignKey: "usuario_id"

        })
    }
    return Usuarios;
};