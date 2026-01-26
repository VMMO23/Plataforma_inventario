CREATE DATABASE DB_Plataforma_TI; -- Se nombra de esta forma, ya que la plataforma no contiene solo el inventario, sino también un sistema de seguimiento
USE DB_Plataforma_TI;

-- ================================================ Entidades Fuertes ========================================================

-- Lista de las tablas fuertes (tbl_red_oficina, tbl_alarma_acta, tbl_entorno, tbl_lider, tbl_estado_producto, tbl_tipo_ti, tbl_tipo_impresora, tbl_rol, tbl_accion_ti, tbl_accion_impresora, tbl_tipo_elemento_impresora).

-- TBL_RED_OFICINA
CREATE TABLE tbl_red_oficina (
PK_ID_Oficina int auto_increment primary key,
Descripcion varchar(20) not null,
Nomenclatura varchar(3) null
);

-- TBL_ALARMA_ACTA
CREATE TABLE tbl_alarma_acta(
PK_ID_Alarma_acta int auto_increment primary key,
Descripcion varchar(20) not null,
Nomenclatura varchar(3) null
);

-- TBL_ENTORNO
CREATE TABLE tbl_entorno(
PK_ID_Entorno int auto_increment primary key,
Descripcion varchar(20) not null,
Nomenclatura varchar(3) null
);

-- TBL_LIDER
CREATE TABLE tbl_lider(
PK_ID_Lider int auto_increment primary key,
Cedula_Ciudadania int,
Nommbres varchar(20),
Apellidos varchar(20),
Celular varchar(10)
);

-- TBL_ESTADO_PPRODUCTO
CREATE TABLE tbl_estado_producto(
PK_ID_Estado_producto int auto_increment primary key,
Descripcion varchar(20) not null,
Nomenclatura varchar(2) null
);

-- TBL_TIPO_TI
CREATE TABLE tbl_tipo_ti(
PK_ID_Tipo_TI int auto_increment primary key,
Descripcion varchar(20) not null,
Nomenclatura varchar(2) null
);

-- TBL_TIPO_IMPRESORA
CREATE TABLE tbl_tipo_impresora(
PK_ID_Tipo_Impresora int auto_increment primary key,
Descripcion varchar(20) not null,
Nomenclatura varchar(2) null
);

-- TBL_ROL
CREATE TABLE tbl_rol(
PK_ID_Rol int auto_increment primary key,
Descripcion varchar(20) not null,
Nomenclatura varchar(2) null
);

-- TBL_ACCION_TI
CREATE TABLE tbl_accion_ti(
PK_ID_Accion_TI int auto_increment primary key,
Descripcion varchar(20) not null,
Nomenclatura varchar(2) null
);

-- TBL_ACCION_IMPRESORA
CREATE TABLE tbl_accion_impresora(
PK_ID_Accion_Impresora int auto_increment primary key,
Descripcion varchar(20) not null,
Nomenclatura varchar(2) null
);

-- TBL_TIPO_ELEMENTO_IMPRESORA
CREATE TABLE tbl_tipo_elemento_impresora( -- Este contiene si son (Unidades de imagen, rollos, ERC)
PK_ID_Tipo_Elemento_Impresora int auto_increment primary key,
Descripcion varchar(20) not null,
Nomenclatura varchar(2) null
);

-- ================================================ Entidades Debiles ========================================================

-- Lista de entidades debiles (tbl_usuario, tbl_producto_ti, tbl_producto_impresora, tbl_historial_ti, tbl_historial_impresora, tbl_zona, tbl_sucursal, tbl_acta, tbl_detalle_producto, tbl_detalle_estado_producto, tbl_seguimiento, tbl_envio_recibido)

-- TBL_USUARIO
CREATE TABLE tbl_usuario(
PK_ID_Usuario int auto_increment primary key,
FK_ID_Rol int not null,
Nombres varchar(30) not null,
Apellidos varchar(30) not null,
Correo_Electronico varchar(130) null,
Nombre_Usuario varchar(20) not null,
Contraseña_Hash varchar(255),
Fecha_Registro datetime default current_timestamp,

FOREIGN KEY (FK_ID_Rol) references tbl_rol(PK_ID_Rol)
);

-- TBL_PRODUCTO_TI
CREATE TABLE tbl_producto_ti(
PK_ID_TI int auto_increment primary key,
FK_ID_Estado_Producto int not null,
FK_ID_Tipo_TI int not null,
FK_ID_Usuario_Creador int not null,
Stock int not null,
Descripcion varchar(200) null,
Fecha_Creacion datetime default current_timestamp,

Foreign key (FK_ID_Estado_Producto) references tbl_estado_producto(PK_ID_Estado_Producto),
Foreign Key (FK_ID_Tipo_TI) references tbl_tipo_ti(PK_ID_Tipo_TI),
Foreign Key (FK_ID_Usuario_Creador) references tbl_usuario(PK_ID_Usuario)
);

-- TBL_PRODUCTO_IMPRESORA
CREATE TABLE tbl_producto_impresora(
PK_ID_Impresora int auto_increment primary key,
FK_ID_Usuario_Creador int not null,
FK_ID_Estado_Producto int not null,
FK_ID_Tipo_Impresora int not null,
FK_ID_Tipo_Elemento int not null,
Stock int not null,
Descripcion varchar(200) null,
Fecha_Creacion datetime default current_timestamp,

Foreign Key (FK_ID_Usuario_Creador) References tbl_usuario(PK_ID_Usuario),
Foreign Key (FK_ID_Estado_Producto) References tbl_estado_producto(PK_ID_Estado_Producto),
Foreign Key (FK_ID_Tipo_Impresora) References tbl_tipo_impresora(PK_ID_Tipo_Impresora),
Foreign Key (FK_ID_Tipo_Elemento) References tbl_tipo_elemento_impresora(PK_ID_Tipo_Elemento_Impresora)
);

-- TBL_HISTORIAL_TI
CREATE TABLE tbl_historial_ti (
PK_ID_Historial_TI int auto_increment primary key,
FK_ID_TI int not null,
FK_ID_Accion_TI int not null,
FK_ID_Usuario int not null,
Descripcion_Cambio varchar(100) null,
Fecha_cambio datetime default current_timestamp,

Foreign Key (FK_ID_TI) References tbl_producto_ti(PK_ID_TI),
Foreign Key (FK_ID_Accion_TI) References tbl_accion_ti(PK_ID_Accion_TI),
Foreign Key (FK_ID_Usuario) References tbl_usuario(PK_ID_Usuario)
);

-- TBL_HISTORIAL_IMPRESORA
CREATE TABLE tbl_historial_impresora (
PK_ID_Historial_Impresora int auto_increment primary key,
FK_ID_Impresora int not null,
FK_ID_Accion_Impresora int not null,
FK_ID_Usuario int not null,
Descripcion_Cambio varchar(100) null,
Fecha_cambio datetime default current_timestamp,

Foreign Key (FK_ID_Impresora) References tbl_producto_impresora(PK_ID_Impresora),
Foreign Key (FK_ID_Accion_Impresora) References tbl_accion_impresora(PK_ID_Accion_Impresora),
Foreign Key (FK_ID_Usuario) References tbl_usuario(PK_ID_Usuario)
);

-- tbl_zona, tbl_sucursal, tbl_acta, tbl_detalle_producto, tbl_detalle_estado_producto, tbl_seguimiento, tbl_envio_recibido

-- TBL_ZONA
CREATE TABLE tbl_zona(
PK_ID_Zona int auto_increment primary key,
FK_ID_Lider int not null,
Descripcion varchar(200),

Foreign key (FK_ID_Lider) References tbl_lider(PK_ID_Lider)
);

-- TBL_SUCURSAL
CREATE TABLE tbl_sucursal(
PK_ID_Sucursal int auto_increment primary key,
FK_ID_Red_Oficina int not null,
FK_ID_Zona int not null,
Nombre_Sucursal varchar(40) not null,
BLD varchar(20) not null,
Codigo_Pagafacil int not null,
Delegacion_Ant varchar(6) not null,
Nueva_Delegacion varchar(10) not null,
Direccion varchar(255) not null,
Ciudad varchar(20) not null,
Departamento varchar(20) not null,

Foreign key (FK_ID_Red_Oficina) References tbl_red_oficina(PK_ID_Oficina),
Foreign Key (FK_ID_Zona) References tbl_zona(PK_ID_Zona)
);

-- TBL_ACTA
CREATE TABLE tbl_acta(
PK_ID_Acta int auto_increment primary key,
FK_ID_Alarma_Acta int not null,
FK_ID_Usuario int not null,
FK_ID_Lider int not null,
FK_ID_Sucursal int null,
Fecha_Envio_Acta datetime default current_timestamp,
Fecha_Recibida_Acta datetime null, -- // Mirar si esta se puede modificar o editar al ya registrarse y haber recibido y subido el acta

Foreign Key (FK_ID_Alarma_Acta) References tbl_alarma_acta(PK_ID_Alarma_Acta),
Foreign Key (FK_ID_Usuario) References tbl_usuario(PK_ID_Usuario),
Foreign Key (FK_ID_Lider) References tbl_lider(PK_ID_Lider),
Foreign Key (FK_ID_Sucursal) References tbl_sucursal(PK_ID_Sucursal)
);

-- TBL_DETALLE_PRODUCTO
CREATE TABLE tbl_detalle_producto(
PK_ID_Detalle_Producto int auto_increment primary key,
FK_ID_Producto_TI int null,
FK_ID_Producto_Impresora int null,
Stock int not null,
Serial_Elemento varchar(50) null,

Foreign Key (FK_ID_Producto_TI) References tbl_producto_ti(PK_ID_TI),
Foreign Key (FK_ID_Producto_Impresora) References tbl_producto_impresora(PK_ID_Impresora)
);

-- TBL_DETALLE_ESTADO_PRODUCTO
CREATE TABLE tbl_detalle_estado_producto(
PK_ID_Detalle_Producto int auto_increment primary key,
FK_ID_Producto_TI int null,
FK_ID_Producto_Impresora int null,
Stock int not null,
Serial_Elemento varchar(50) null,

Foreign Key (FK_ID_Producto_TI) References tbl_producto_ti(PK_ID_TI),
Foreign Key (FK_ID_Producto_Impresora) References tbl_producto_impresora(PK_ID_Impresora)
);

-- TBL_SEGUIMIENTO
CREATE TABLE tbl_seguimiento(
PK_ID_Seguimiento int auto_increment primary key,
FK_ID_Detalle_Est_Prod int not null,
FK_ID_Sucursal int not null,

Foreign Key (FK_ID_Detalle_Est_Prod) References tbl_detalle_estado_producto(PK_ID_Detalle_Producto),
Foreign Key (FK_ID_Sucursal) References tbl_sucursal(PK_ID_Sucursal)
);

-- TBL_ENVIO_RECIBIDO
CREATE TABLE tbl_envio_recibido(
PK_ID_Envio int auto_increment primary key,
FK_ID_Detalle_Producto int not null,
FK_ID_Usuario int not null,
FK_ID_Alarma_Acta int not null,
FK_ID_Entorno int not null,
FK_ID_Sucursal int not null,
Fecha_Envio_Recibido datetime default current_timestamp,
Observaciones varchar(255),
Foto_Envio longtext,

Foreign Key (FK_ID_Detalle_Producto) References tbl_detalle_producto(PK_ID_Detalle_Producto),
Foreign Key (FK_ID_Usuario) References tbl_usuario(PK_ID_Usuario),
Foreign Key (FK_ID_Alarma_Acta) References tbl_alarma_acta(PK_ID_Alarma_Acta),
Foreign Key (FK_ID_Entorno) References tbl_entorno(PK_ID_Entorno),
Foreign Key (FK_ID_Sucursal) References tbl_sucursal(PK_ID_Sucursal)
);
