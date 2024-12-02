create database AR512;
use AR512;

CREATE TABLE LIBRO(
    cod_libro VARCHAR(6),
    titulo VARCHAR(25),
    autor VARCHAR(30),
    ejemplares int(2),
    genero enum('inf','his'),
    CONSTRAINT lib_cod_pk PRIMARY KEY(cod_libro),
    CONSTRAINT lib_tit_uk UNIQUE(titulo)
);

CREATE TABLE PRESTAMO(
    cod_libro VARCHAR(6),
    cod_socio int(5),
    fecha_entrega date,
    fecha_devolucion date,
    CONSTRAINT pre_cod_pk PRIMARY KEY(cod_libro, cod_socio, fecha_entrega),
    CONSTRAINT lib_fec_ck CHECK(fecha_entrega<fecha_devolucion)
);

ALTER TABLE PRESTAMO ADD constraint pre_cod_fk FOREIGN KEY (cod_libro) REFERENCES LIBRO(cod_libro);