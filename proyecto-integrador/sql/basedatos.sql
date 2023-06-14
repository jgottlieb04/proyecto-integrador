CREATE SCHEMA baseDatos1;
USE baseDatos1;

create table  users (
id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
usuario VARCHAR (100) UNIQUE NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
contrasena VARCHAR(500) NOT NULL,
foto_perfil VARCHAR(500),
fecha DATE NOT NULL,
dni INT UNIQUE NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO users values(default,'Santino5' ,'sony@gmail.com', 'sony123','/images/armani.jpeg' , '2003-12-22', 45414818, default, default);
INSERT INTO users values(default,'gero5' , 'geroa@gmail.com', 'gero04', '/images/chino.jpeg','2004-06-24',45471562, default, default);
INSERT INTO users values(default,'justo5' , 'jgott@gmail.com', '9.12.18', '/images/chori.jpeg','2004-01-21',45481592, default, default);
INSERT INTO users values(default,'Maidana' , 'sgalli@gmail.com', 'bears26', '/images/sonic.png','2018-12-09',44296899, default, default);

create table productos(
id INT UNSIGNED PRIMARY KEY  AUTO_INCREMENT,
usuario_id INT UNSIGNED, 
nombre VARCHAR(500) NOT NULL,
imagen VARCHAR(500) NOT NULL,
descripcion VARCHAR(500),
created_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
FOREIGN KEY (usuario_id) REFERENCES users(id)
);

INSERT INTO productos (id,usuario_id,nombre,imagen,descripcion,created_at,updated_at)
values (default,1,"Boca 1993","/images/camisetas/Boca-1993.jpg",'Remera de Boca 1993',default,default);
INSERT INTO productos (id,usuario_id,nombre,imagen,descripcion,created_at,updated_at)
values (default,2,"Boca 2000","/images/Camisetas/Boca-2000.jpg",'Remera de Boca 2000',default,default);
INSERT INTO productos (id,usuario_id,nombre,imagen,descripcion,created_at,updated_at)
values (default,3,"Boca 2023","/images/Camisetas/Boca-Actual.jpg",'Remera de Boca actual',default,default);
INSERT INTO productos (id,usuario_id,nombre,imagen,descripcion,created_at,updated_at)
values (default,4,'River 1986',"/images/Camisetas/River-1986.jpg",'Remera de River 1986',default,default);
INSERT INTO productos (id,usuario_id,nombre,imagen,descripcion,created_at,updated_at)
values (default,4,'River 2003',"/images/Camisetas/River-2003.jpg",'Remera de River 2003',default,default);
INSERT INTO productos (id,usuario_id,nombre,imagen,descripcion,created_at,updated_at)
values (default,1,'River 2023',"/images/Camisetas/River-Actual.jpg", 'Remera de River actual',default,default);
INSERT INTO productos (id,usuario_id,nombre,imagen,descripcion,created_at,updated_at)
values (default,2,'Independiente 2013',"/images/Camisetas/Independiente-2013.jpg",'Remera de Independiente 2013 (B)',default,default);
INSERT INTO productos (id,usuario_id,nombre,imagen,descripcion,created_at,updated_at)
values (default,3,'Independiente 2023',"/images/Camisetas/Independiente-Actual.jpg",'Remera de Independiente actual',default,default);
INSERT INTO productos (id,usuario_id,nombre,imagen,descripcion,created_at,updated_at)
values (default,4,'Racing 2015',"/images/Camisetas/Racing-2015.jpg",'Remera de Racing 2015',default,default);
INSERT INTO productos (id,usuario_id,nombre,imagen,descripcion,created_at,updated_at)
values (default,4,'Racing 2023',"/images/Camisetas/Racing-Actual.jpg",'Remera de Racing actual',default,default);

create table comentarios(
id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
producto_id INT UNSIGNED NOT NULL ,
usuario_id INT UNSIGNED NOT NULL,
comentario VARCHAR(500) NOT NULL,
created_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
FOREIGN KEY (producto_id) REFERENCES productos(id),
FOREIGN KEY (usuario_id) REFERENCES users(id)
);

INSERT INTO comentarios (id,producto_id,usuario_id,comentario,created_at,updated_at)
values (default,1,1,'Que buenas remeras me encanta lo retro',default,default);
INSERT INTO comentarios (id,producto_id,usuario_id,comentario,created_at,updated_at)
values (default,1,2,'No me gustaron, mala calidad',default,default);
INSERT INTO comentarios (id,producto_id,usuario_id,comentario,created_at,updated_at)
values (default,1,3,'MUCHAS GRACIAS BUENARDAS',default,default);
INSERT INTO comentarios (id,producto_id,usuario_id,comentario,created_at,updated_at)
values (default,1,4,'llegaron graciass',default,default);
INSERT INTO comentarios (id,producto_id,usuario_id,comentario,created_at,updated_at)
values (default,2,1,'Que buenas remeras me encanta lo retro',default,default);
INSERT INTO comentarios (id,producto_id,usuario_id,comentario,created_at,updated_at)
values (default,2,2,'No me gustaron, mala calidad',default,default);
INSERT INTO comentarios (id,producto_id,usuario_id,comentario,created_at,updated_at)
values (default,2,3,'MUCHAS GRACIAS BUENARDAS',default,default);
INSERT INTO comentarios (id,producto_id,usuario_id,comentario,created_at,updated_at)
values (default,2,4,'llegaron graciass',default,default);
INSERT INTO comentarios (id,producto_id,usuario_id,comentario,created_at,updated_at)
values (default,3,1,'Que buenas remeras me encanta lo retro',default,default);
INSERT INTO comentarios (id,producto_id,usuario_id,comentario,created_at,updated_at)
values (default,3,2,'No me gustaron, mala calidad',default,default);
INSERT INTO comentarios (id,producto_id,usuario_id,comentario,created_at,updated_at)
values (default,3,3,'MUCHAS GRACIAS BUENARDAS',default,default);
INSERT INTO comentarios (id,producto_id,usuario_id,comentario,created_at,updated_at)
values (default,3,4,'llegaron graciass',default,default);
INSERT INTO comentarios (id,producto_id,usuario_id,comentario,created_at,updated_at)
values (default,4,1,'Que buenas remeras me encanta lo retro',default,default);
INSERT INTO comentarios (id,producto_id,usuario_id,comentario,created_at,updated_at)
values (default,4,2,'No me gustaron, mala calidad',default,default);
INSERT INTO comentarios (id,producto_id,usuario_id,comentario,created_at,updated_at)
values (default,4,3,'MUCHAS GRACIAS BUENARDAS',default,default);
INSERT INTO comentarios (id,producto_id,usuario_id,comentario,created_at,updated_at)
values (default,4,4,'llegaron graciass',default,default);
INSERT INTO comentarios (id,producto_id,usuario_id,comentario,created_at,updated_at)
values (default,5,1,'Que buenas remeras me encanta lo retro',default,default);
INSERT INTO comentarios (id,producto_id,usuario_id,comentario,created_at,updated_at)
values (default,5,2,'No me gustaron, mala calidad',default,default);
INSERT INTO comentarios (id,producto_id,usuario_id,comentario,created_at,updated_at)
values (default,5,3,'MUCHAS GRACIAS BUENARDAS',default,default);
INSERT INTO comentarios (id,producto_id,usuario_id,comentario,created_at,updated_at)
values (default,5,4,'llegaron graciass',default,default);
INSERT INTO comentarios (id,producto_id,usuario_id,comentario,created_at,updated_at)
values (default,6,1,'Que buenas remeras me encanta lo retro',default,default);
INSERT INTO comentarios (id,producto_id,usuario_id,comentario,created_at,updated_at)
values (default,6,2,'No me gustaron, mala calidad',default,default);
INSERT INTO comentarios (id,producto_id,usuario_id,comentario,created_at,updated_at)
values (default,6,3,'MUCHAS GRACIAS BUENARDAS',default,default);
INSERT INTO comentarios (id,producto_id,usuario_id,comentario,created_at,updated_at)
values (default,6,4,'llegaron graciass',default,default);
INSERT INTO comentarios (id,producto_id,usuario_id,comentario,created_at,updated_at)
values (default,7,1,'Que buenas remeras me encanta lo retro',default,default);
INSERT INTO comentarios (id,producto_id,usuario_id,comentario,created_at,updated_at)
values (default,7,2,'No me gustaron, mala calidad',default,default);
INSERT INTO comentarios (id,producto_id,usuario_id,comentario,created_at,updated_at)
values (default,7,3,'MUCHAS GRACIAS BUENARDAS',default,default);
INSERT INTO comentarios (id,producto_id,usuario_id,comentario,created_at,updated_at)
values (default,7,4,'llegaron graciass',default,default);
INSERT INTO comentarios (id,producto_id,usuario_id,comentario,created_at,updated_at)
values (default,8,1,'Que buenas remeras me encanta lo retro',default,default);
INSERT INTO comentarios (id,producto_id,usuario_id,comentario,created_at,updated_at)
values (default,8,2,'No me gustaron, mala calidad',default,default);
INSERT INTO comentarios (id,producto_id,usuario_id,comentario,created_at,updated_at)
values (default,8,3,'MUCHAS GRACIAS BUENARDAS',default,default);
INSERT INTO comentarios (id,producto_id,usuario_id,comentario,created_at,updated_at)
values (default,8,4,'llegaron graciass',default,default);
INSERT INTO comentarios (id,producto_id,usuario_id,comentario,created_at,updated_at)
values (default,9,1,'Que buenas remeras me encanta lo retro',default,default);
INSERT INTO comentarios (id,producto_id,usuario_id,comentario,created_at,updated_at)
values (default,9,2,'No me gustaron, mala calidad',default,default);
INSERT INTO comentarios (id,producto_id,usuario_id,comentario,created_at,updated_at)
values (default,9,3,'MUCHAS GRACIAS BUENARDAS',default,default);
INSERT INTO comentarios (id,producto_id,usuario_id,comentario,created_at,updated_at)
values (default,9,4,'llegaron graciass',default,default);
INSERT INTO comentarios (id,producto_id,usuario_id,comentario,created_at,updated_at)
values (default,10,1,'Que buenas remeras me encanta lo retro',default,default);
INSERT INTO comentarios (id,producto_id,usuario_id,comentario,created_at,updated_at)
values (default,10,2,'No me gustaron, mala calidad',default,default);
INSERT INTO comentarios (id,producto_id,usuario_id,comentario,created_at,updated_at)
values (default,10,3,'MUCHAS GRACIAS BUENARDAS',default,default);
INSERT INTO comentarios (id,producto_id,usuario_id,comentario,created_at,updated_at)
values (default,10,4,'llegaron graciass',default,default);

