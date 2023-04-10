-- crear base de datos --
-- Un error te caga el proyecto --
use proyecto;
create table productos(
id int UNSIGNED PRIMARY KEY AUTO_INCREMENT,
NombreProd VARCHAR (200) NOT NULL,
descripcion VARCHAR (200) NOT NULL,


createdAt  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP



);