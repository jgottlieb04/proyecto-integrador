module.exports= function (sequelize, dataTypes){
    let alias="Product";
    //mapeo exacto de cada una de las columnas//
    let cols = {
        id:{
            autoIncrement: true,
            primaryKey: true,
            type: dataTypes.INTEGER, //saber bien tipos de datos(objeto adentro de objeto) porpiedades y sus metodos.
        },
        usuario_id:{
            type: dataTypes.INTEGER,
        },
        nombre:{
            type: dataTypes.STRING,
        },
        descripcion:{
            type: dataTypes.STRING,
        },
        
    };
    let config = {
        tableName: 'productos',
        timestamps: false, //Si la tabla no tiene los campos created_at y updated_at
        underscored: true, //Si los nombres de las columnas en la db tienen guiones bajos en lugar de camelCase.
    };
    
    const Products= sequelize.define(alias,cols,config);

    /* Products.associate = function(models){

        Products.belongsTo("models.Usuario",{
            as: "usuarios",
            foreignKey: "usuario_id"

        })
    } */


    return Products;

}; //sequelize y datatypes son objetos literales

