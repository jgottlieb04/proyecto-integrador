-- crear base de datos --
-- Un error te caga el proyecto --
CREATE SCHEMA proyectoIntegrador;
USE proyectoIntegrador;
create table  users (
id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
email VARCHAR(100) UNIQUE NOT NULL,
password VARCHAR(500) NOT NULL,
foto_perfil VARCHAR(500),
fecha DATE NOT NULL,
dni INT UNIQUE NOT NULL,
createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
create table productos(
id INT UNSIGNED PRIMARY KEY  AUTO_INCREMENT,
id_users INT UNSIGNED,
nombre VARCHAR(500) NOT NULL,
descripcion VARCHAR(500),
createdAt  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

FOREIGN KEY (id_users) REFERENCES users(id)
);
create table comentarios(
id_producto INT UNSIGNED ,
id_user INT UNSIGNED,
comentario VARCHAR(500) NOT NULL,
createdAt  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
FOREIGN KEY (id_user) REFERENCES users(id),
FOREIGN KEY (id_producto) REFERENCES productos(id)
);

-- -- /CREATE SCHEMA proyectoIntegrador;
-- USE proyectoIntegrador;
-- create table  users (
-- id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
-- email VARCHAR(100) UNIQUE NOT NULL,
-- password VARCHAR(500) NOT NULL,
-- foto_perfil VARCHAR(500),
-- fecha DATE NOT NULL,
-- dni INT UNIQUE NOT NULL,
-- createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
-- updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
-- );
-- INSERT INTO users values(default, 'sony@gmail.com', 'sony123','/images/foto1.jpg' , '2003-12-22', 45414818, default, default);
-- INSERT INTO users values(default, 'geroa@gmail.com', 'gero04', '/images/foto2.jpg','2004-06-24',45471562, default, default);
-- INSERT INTO users values(default, 'jgott@gmail.com', '9.12.18', '/images/foto3.jpg','2004-01-21',45481592, default, default);
-- INSERT INTO users values(default, 'sgalli@gmail.com', 'bears26', '/images/foto4.jpg','2018-12-09',44296899, default, default);


-- create table productos(
-- id INT UNSIGNED PRIMARY KEY  AUTO_INCREMENT,
-- id_users INT UNSIGNED,
-- nombre VARCHAR(500) NOT NULL,
-- descripcion VARCHAR(500),
-- createdAt  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
-- updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
-- FOREIGN KEY (id_users) REFERENCES users(id)
-- );

-- INSERT INTO productos values (default,default,'Newells 2013','Remera de Newells 2013',default,default);
-- INSERT INTO productos values (default,default,'Barca 2011','Remera de Barca 2011',default,default);
-- INSERT INTO productos values (default,default,'Real 2014','Remera de Real 2014',default,default);
-- INSERT INTO productos values (default,default,'Chelsea 2012','Remera de Chelsea 2012',default,default);
-- INSERT INTO productos values (default,default,'Barca 2023','Remera de Barca actual',default,default);
-- INSERT INTO productos values (default,default,'Real 2023','Remera de Real actual',default,default);
-- INSERT INTO productos values (default,default,'Liverpool 2013','Remera de Liverpool estampa Suarez',default,default);
-- INSERT INTO productos values (default,default,'Liverpool 2023','Remera de Liverpool actual',default,default);
-- INSERT INTO productos values (default,default,'Argentina 1986','Remera de Maradona 1986',default,default);
-- INSERT INTO productos values (default,default,'Argentina 2022','Remera de Messi qatar',default,default);


-- create table comentarios(
-- id_producto INT UNSIGNED ,
-- id_user INT UNSIGNED,
-- comentario VARCHAR(500) NOT NULL,
-- createdAt  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
-- updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
-- FOREIGN KEY (id_user) REFERENCES users(id),
-- FOREIGN KEY (id_producto) REFERENCES productos(id)
-- );

-- INSERT INTO comentarios values (default,default,'Que buenas remeras,me encanta lo retro',default,default);
-- INSERT INTO comentarios values (default,default,'Las pedi hace 5 meses, todavia no llegaron',default,default);
-- INSERT INTO comentarios values (default,default,'Buena calidad',default,default);
-- INSERT INTO comentarios values (default,default,'Buena calidad',default,default);
-- INSERT INTO comentarios values (default,default,'Me quedo grande, quiero cambiarla',default,default);
-- INSERT INTO comentarios values (default,default,'GRACIAS POR SU ATENCION',default,default);
-- INSERT INTO comentarios values (default,default,'Hermosa su calidad',default,default);
-- INSERT INTO comentarios values (default,default,'Muy buena atencion',default,default);
-- INSERT INTO comentarios values (default,default,'Quedamos contentos',default,default);
-- INSERT INTO comentarios values (default,default,'Me vinieron sucias, y la calidad es mala',default,default);
-- INSERT INTO comentarios values (default,default,'Que buenas remeras,me encanta lo retro',default,default);
-- INSERT INTO comentarios values (default,default,'Las pedi hace 5 meses, todavia no llegaron',default,default);
-- INSERT INTO comentarios values (default,default,'Buena calidad',default,default);
-- INSERT INTO comentarios values (default,default,'Buena calidad',default,default);
-- INSERT INTO comentarios values (default,default,'Me quedo grande, quiero cambiarla',default,default);
-- INSERT INTO comentarios values (default,default,'GRACIAS POR SU ATENCION',default,default);
-- INSERT INTO comentarios values (default,default,'Hermosa su calidad',default,default);
-- INSERT INTO comentarios values (default,default,'Muy buena atencion',default,default);
-- INSERT INTO comentarios values (default,default,'Quedamos contentos',default,default);
-- INSERT INTO comentarios values (default,default,'Me vinieron sucias, y la calidad es mala',default,default);
-- INSERT INTO comentarios values (default,default,'Que buenas remeras,me encanta lo retro',default,default);
-- INSERT INTO comentarios values (default,default,'Las pedi hace 5 meses, todavia no llegaron',default,default);
-- INSERT INTO comentarios values (default,default,'Buena calidad',default,default);
-- INSERT INTO comentarios values (default,default,'Buena calidad',default,default);
-- INSERT INTO comentarios values (default,default,'Me quedo grande, quiero cambiarla',default,default);
-- INSERT INTO comentarios values (default,default,'GRACIAS POR SU ATENCION',default,default);
-- INSERT INTO comentarios values (default,default,'Hermosa su calidad',default,default);
-- INSERT INTO comentarios values (default,default,'Muy buena atencion',default,default);
-- INSERT INTO comentarios values (default,default,'Quedamos contentos',default,default);
-- INSERT INTO comentarios values (default,default,'Me vinieron sucias, y la calidad es mala',default,default);
-- INSERT INTO comentarios values (default,default,'Que buenas remeras,me encanta lo retro',default,default);
-- INSERT INTO comentarios values (default,default,'Las pedi hace 5 meses, todavia no llegaron',default,default);
-- INSERT INTO comentarios values (default,default,'Buena calidad',default,default);
-- INSERT INTO comentarios values (default,default,'Buena calidad',default,default);
-- INSERT INTO comentarios values (default,default,'Me quedo grande, quiero cambiarla',default,default);
-- INSERT INTO comentarios values (default,default,'GRACIAS POR SU ATENCION',default,default);
-- INSERT INTO comentarios values (default,default,'Hermosa su calidad',default,default);
-- INSERT INTO comentarios values (default,default,'Muy buena atencion',default,default);
-- INSERT INTO comentarios values (default,default,'Quedamos contentos',default,default);
-- INSERT INTO comentarios values (default,default,'Me vinieron sucias, y la calidad es mala',default,default);
