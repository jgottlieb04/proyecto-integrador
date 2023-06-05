CREATE SCHEMA baseDatos1;
USE baseDatos1;

create table  users (
id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
email VARCHAR(100) UNIQUE NOT NULL,
contraseña VARCHAR(500) NOT NULL,
foto_perfil VARCHAR(500),
fecha DATE NOT NULL,
dni INT UNIQUE NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO users values(default, 'sony@gmail.com', 'sony123','/images/foto1.jpg' , '2003-12-22', 45414818, default, default);
INSERT INTO users values(default, 'geroa@gmail.com', 'gero04', '/images/foto2.jpg','2004-06-24',45471562, default, default);
INSERT INTO users values(default, 'jgott@gmail.com', '9.12.18', '/images/foto3.jpg','2004-01-21',45481592, default, default);
INSERT INTO users values(default, 'sgalli@gmail.com', 'bears26', '/images/foto4.jpg','2018-12-09',44296899, default, default);

create table productos(
id INT UNSIGNED PRIMARY KEY  AUTO_INCREMENT,
usuario_id INT UNSIGNED NOT NULL, 
nombre VARCHAR(500) NOT NULL,
imagen VARCHAR(500) NOT NULL,
descripcion VARCHAR(500),
created_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
FOREIGN KEY (usuario_id) REFERENCES users(id)
);

INSERT INTO productos (id,usuario_id,nombre,imagen,descripcion,created_at,updated_at)
values (default,1,"Newells 2013","/images/camisetas/Boca-1993.jpg",'Remera de Newells 2013',default,default);
INSERT INTO productos (id,usuario_id,nombre,imagen,descripcion,created_at,updated_at)
values (default,2,"Newells 2013","/images/camisetas/Boca-1993.jpg",'Remera de Newells 2013',default,default);
INSERT INTO productos (id,usuario_id,nombre,imagen,descripcion,created_at,updated_at)
values (default,3,"Newells 2013","/images/camisetas/Boca-1993.jpg",'Remera de Newells 2013',default,default);
INSERT INTO productos (id,usuario_id,nombre,imagen,descripcion,created_at,updated_at)
values (default,4,'Chelsea 2012',"/images/camisetas/Boca-1993.jpg",'Remera de Chelsea 2012',default,default);
INSERT INTO productos (id,usuario_id,nombre,imagen,descripcion,created_at,updated_at)
values (default,4,'Chelsea 2012',"/images/camisetas/Boca-1993.jpg",'Remera de Chelsea 2012',default,default);
INSERT INTO productos (id,usuario_id,nombre,imagen,descripcion,created_at,updated_at)
values (default,1,'Real 2023',"/images/camisetas/Boca-1993.jpg", 'Remera de Real actual',default,default);
INSERT INTO productos (id,usuario_id,nombre,imagen,descripcion,created_at,updated_at)
values (default,2,'Liverpool 201,"/images/camisetas/Boca-1993.jpg"3','Remera de Liverpool estampa Suarez',default,default);
INSERT INTO productos (id,usuario_id,nombre,imagen,descripcion,created_at,updated_at)
values (default,3,'Liverpool 202,"/images/camisetas/Boca-1993.jpg"3','Remera de Liverpool actual',default,default);
INSERT INTO productos (id,usuario_id,nombre,imagen,descripcion,created_at,updated_at)
values (default,4,'Argentina 198,"/images/camisetas/Boca-1993.jpg"6','Remera de Maradona 1986',default,default);
INSERT INTO productos (id,usuario_id,nombre,imagen,descripcion,created_at,updated_at)
values (default,4,'Argentina 202,"/images/camisetas/Boca-1993.jpg"2','Remera de Messi qatar',default,default);

create table comentarios(
producto_id INT UNSIGNED NOT NULL ,
usuario_id INT UNSIGNED NOT NULL,
comentario VARCHAR(500) NOT NULL,
created_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
FOREIGN KEY (producto_id) REFERENCES productos(id),
FOREIGN KEY (usuario_id) REFERENCES users(id)
);

INSERT INTO comentarios (producto_id,usuario_id,comentario,created_at,updated_at)
values (1,1,'Que buenas remeras me encanta lo retro',default,default);
INSERT INTO comentarios (producto_id,usuario_id,comentario,created_at,updated_at)
values (1,2,'Que buenas remeras me encanta lo retro',default,default);
INSERT INTO comentarios (producto_id,usuario_id,comentario,created_at,updated_at)
values (1,3,'Que buenas remeras me encanta lo retro',default,default);
INSERT INTO comentarios (producto_id,usuario_id,comentario,created_at,updated_at)
values (1,4,'Que buenas remeras me encanta lo retro',default,default);
INSERT INTO comentarios (producto_id,usuario_id,comentario,created_at,updated_at)
values (2,1,'Que buenas remeras me encanta lo retro',default,default);
INSERT INTO comentarios (producto_id,usuario_id,comentario,created_at,updated_at)
values (2,2,'Que buenas remeras me encanta lo retro',default,default);
INSERT INTO comentarios (producto_id,usuario_id,comentario,created_at,updated_at)
values (2,3,'Que buenas remeras me encanta lo retro',default,default);
INSERT INTO comentarios (producto_id,usuario_id,comentario,created_at,updated_at)
values (2,4,'Que buenas remeras me encanta lo retro',default,default);
INSERT INTO comentarios (producto_id,usuario_id,comentario,created_at,updated_at)
values (3,1,'Que buenas remeras me encanta lo retro',default,default);
INSERT INTO comentarios (producto_id,usuario_id,comentario,created_at,updated_at)
values (3,2,'Que buenas remeras me encanta lo retro',default,default);

INSERT INTO comentarios (producto_id,usuario_id,comentario,created_at,updated_at)
values (3,3,'Que buenas remeras me encanta lo retro',default,default);
INSERT INTO comentarios (producto_id,usuario_id,comentario,created_at,updated_at)
values (3,4,'Que buenas remeras me encanta lo retro',default,default);
INSERT INTO comentarios (producto_id,usuario_id,comentario,created_at,updated_at)
values (4,1,'Que buenas remeras me encanta lo retro',default,default);
INSERT INTO comentarios (producto_id,usuario_id,comentario,created_at,updated_at)
values (4,2,'Que buenas remeras me encanta lo retro',default,default);
INSERT INTO comentarios (producto_id,usuario_id,comentario,created_at,updated_at)
values (4,3,'Que buenas remeras me encanta lo retro',default,default);
INSERT INTO comentarios (producto_id,usuario_id,comentario,created_at,updated_at)
values (4,4,'Que buenas remeras me encanta lo retro',default,default);
INSERT INTO comentarios (producto_id,usuario_id,comentario,created_at,updated_at)
values (5,1,'Que buenas remeras me encanta lo retro',default,default);
INSERT INTO comentarios (producto_id,usuario_id,comentario,created_at,updated_at)
values (5,2,'Que buenas remeras me encanta lo retro',default,default);
INSERT INTO comentarios (producto_id,usuario_id,comentario,created_at,updated_at)
values (5,3,'Que buenas remeras me encanta lo retro',default,default);
INSERT INTO comentarios (producto_id,usuario_id,comentario,created_at,updated_at)
values (5,4,'Que buenas remeras me encanta lo retro',default,default);

INSERT INTO comentarios (producto_id,usuario_id,comentario,created_at,updated_at)
values (6,1,'Que buenas remeras me encanta lo retro',default,default);
INSERT INTO comentarios (producto_id,usuario_id,comentario,created_at,updated_at)
values (6,2,'Que buenas remeras me encanta lo retro',default,default);
INSERT INTO comentarios (producto_id,usuario_id,comentario,created_at,updated_at)
values (6,3,'Que buenas remeras me encanta lo retro',default,default);
INSERT INTO comentarios (producto_id,usuario_id,comentario,created_at,updated_at)
values (6,4,'Que buenas remeras me encanta lo retro',default,default);
INSERT INTO comentarios (producto_id,usuario_id,comentario,created_at,updated_at)
values (7,1,'Que buenas remeras me encanta lo retro',default,default);
INSERT INTO comentarios (producto_id,usuario_id,comentario,created_at,updated_at)
values (7,2,'Que buenas remeras me encanta lo retro',default,default);
INSERT INTO comentarios (producto_id,usuario_id,comentario,created_at,updated_at)
values (7,3,'Que buenas remeras me encanta lo retro',default,default);
INSERT INTO comentarios (producto_id,usuario_id,comentario,created_at,updated_at)
values (7,4,'Que buenas remeras me encanta lo retro',default,default);
INSERT INTO comentarios (producto_id,usuario_id,comentario,created_at,updated_at)
values (8,1,'Que buenas remeras me encanta lo retro',default,default);
INSERT INTO comentarios (producto_id,usuario_id,comentario,created_at,updated_at)
values (8,2,'Que buenas remeras me encanta lo retro',default,default);

INSERT INTO comentarios (producto_id,usuario_id,comentario,created_at,updated_at)
values (8,3,'Que buenas remeras me encanta lo retro',default,default);
INSERT INTO comentarios (producto_id,usuario_id,comentario,created_at,updated_at)
values (8,4,'Que buenas remeras me encanta lo retro',default,default);
INSERT INTO comentarios (producto_id,usuario_id,comentario,created_at,updated_at)
values (9,1,'Que buenas remeras me encanta lo retro',default,default);
INSERT INTO comentarios (producto_id,usuario_id,comentario,created_at,updated_at)
values (9,2,'Que buenas remeras me encanta lo retro',default,default);
INSERT INTO comentarios (producto_id,usuario_id,comentario,created_at,updated_at)
values (9,3,'Que buenas remeras me encanta lo retro',default,default);
INSERT INTO comentarios (producto_id,usuario_id,comentario,created_at,updated_at)
values (9,4,'Que buenas remeras me encanta lo retro',default,default);
INSERT INTO comentarios (producto_id,usuario_id,comentario,created_at,updated_at)
values (10,1,'Que buenas remeras me encanta lo retro',default,default);
INSERT INTO comentarios (producto_id,usuario_id,comentario,created_at,updated_at)
values (10,2,'Que buenas remeras me encanta lo retro',default,default);
INSERT INTO comentarios (producto_id,usuario_id,comentario,created_at,updated_at)
values (10,3,'Que buenas remeras me encanta lo retro',default,default);
INSERT INTO comentarios (producto_id,usuario_id,comentario,created_at,updated_at)
values (10,4,'Que buenas remeras me encanta lo retro',default,default);


