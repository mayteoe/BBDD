CREATE DATABASE IF NOT EXISTS empresa DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;

USE empresa;

DROP TABLE IF EXISTS  habilidad ;
CREATE TABLE  habilidad  (
   CodHab  CHAR(5) PRIMARY KEY ,
   DesHab  VARCHAR(30) UNIQUE
) ENGINE=InnoDB;


DROP TABLE IF EXISTS  centro ;
CREATE TABLE  centro  (
  CodCen CHAR(4)  PRIMARY KEY,
  CodEmpDir INT(10) ,
  NomCen VARCHAR(30) NOT NULL UNIQUE,
  DirCen VARCHAR(50) ,
  PobCen VARCHAR(15)
  ) ENGINE=InnoDB;


DROP TABLE IF EXISTS  departamento ;
CREATE TABLE  departamento  (
  CodDep CHAR(5) PRIMARY KEY,
  CodEmpDir INT(10),
  CodDepDep CHAR(5),
  CodCen CHAR(4),
  NomDep VARCHAR(40) NOT NULL UNIQUE,
  PreAnu DECIMAL(12,2),
  TiDir ENUM('F','P')
  ) ENGINE=InnoDB;


DROP TABLE IF EXISTS  empleado ;
CREATE TABLE  empleado  (
  CodEmp INT(10)  AUTO_INCREMENT PRIMARY KEY,
  CodDep CHAR(5),
  ExTelEmp VARCHAR(9),
  FecInEmp DATE,
  FecNaEmp DATE,
  NifEmp VARCHAR(9),
  NomEmp VARCHAR(40),
  NumHi INT(1) ,
  SalEmp DECIMAL(12,2)
) ENGINE=InnoDB;


DROP TABLE IF EXISTS  habemp ;
CREATE TABLE  habemp  (
   CodHab  CHAR(5),
   CodEmp  INT(10) ,
   NivHab  TINYINT ,
   PRIMARY KEY ( CodEmp , CodHab )
) ENGINE=InnoDB;



DROP TABLE IF EXISTS  hijo;
CREATE TABLE  hijo  (
   CodEmp  INT(10)   ,
   NumHij  INT(1)   ,
   FecNaHi  DATE,
   NomHi  VARCHAR(40)  ,
   PRIMARY KEY  ( CodEmp , NumHij )
 ) ENGINE=InnoDB ;


ALTER TABLE departamento
ADD CONSTRAINT fk_dep_cen FOREIGN KEY (CodCen) REFERENCES centro(CodCen)
ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE departamento
ADD CONSTRAINT fk_dep_emp FOREIGN KEY (CodEmpDir) REFERENCES empleado(CodEmp)
ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE departamento
ADD CONSTRAINT fk_dep_dep FOREIGN KEY (CodDepDep) REFERENCES departamento(CodDep)
ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE empleado
ADD CONSTRAINT fk_emp_dep FOREIGN KEY (CodDep) REFERENCES departamento(CodDep)
ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE centro
ADD CONSTRAINT fk_cen_emp FOREIGN KEY (CodEmpDir) REFERENCES empleado(CodEmp)
ON DELETE NO ACTION ON UPDATE CASCADE;


ALTER TABLE hijo
ADD CONSTRAINT fk_hij_emp FOREIGN KEY (CodEmp) REFERENCES empleado(CodEmp)
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE habemp
ADD CONSTRAINT fk_habemp_emp FOREIGN KEY (CodEmp) REFERENCES empleado(CodEmp)
ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE habemp
ADD CONSTRAINT fk_habemp_hab FOREIGN KEY (CodHab) REFERENCES habilidad(CodHab)
ON DELETE NO ACTION ON UPDATE CASCADE;


SET FOREIGN_KEY_CHECKS=0;


INSERT INTO  habilidad  ( CodHab , DesHab ) VALUES
 ('FONTA','Fontanería'),
 ('GEREN','Gerencia'),
 ('GESCO','Gestión Contable'),
 ('MARKE','Marketing'),
 ('MECAN','Mecanografía'),
 ('RELPU','Relaciones Públicas'),
 ('TELEF','Telefonista'),
 ('INFOR','INFORMATICA');

INSERT INTO  centro  ( CodCen , CodEmpDir , NomCen , DirCen , PobCen ) VALUES
 ('DIGE',1,'Dirección General','Av. Constitución 88','Murcia'),
 ('FAZS',6,'Fábrica Zona Sur','Pol. Ind. Gral. Bastarreche','Cartagena'),
 ('OFZS',5,'Oficinas Zona Sur','Pl. España 14','Cartagena');


INSERT INTO  departamento  ( CodDep , CodEmpDir , CodDepDep , CodCen , NomDep , PreAnu , TiDir ) VALUES
 ('ADMZS',5,NULL,'OFZS','Administración Zona Sur',14000000,'P'),
 ('DIRGE',1,NULL,'DIGE','Dirección General',26000000,'P'),
 ('IN&DI',2,'DIRGE','DIGE','Investigación y Diseño',25000000,'P'),
 ('JEFZS',6,NULL,'FAZS','Jefatura Fábrica Zona Sur',6200000,'F'),
 ('PROZS',9,'JEFZS','FAZS','Producción Zona Sur',108000000,'P'),
 ('VENZS',3,'ADMZS','OFZS','Ventas Zona Sur',13500000,'F');

INSERT INTO  empleado  ( CodEmp , CodDep , ExTelEmp , FecInEmp , FecNaEmp , NifEmp , NomEmp , NumHi , SalEmp ) VALUES
 (1,'DIRGE','1111','1972-07-01 ','1961-08-07','21451451V','Saladino Mandamás, Augusto',1,7200000),
 (2,'IN&DI','2233','1991-06-14 ','1970-06-08','21231347K','Manrique Bacterio, Luisa',0,4500000),
 (3,'VENZS','2133','1984-06-08 ','1965-12-07','23823930D','Monforte Cid, Roldán',1,5200000),
 (4,'VENZS','3838','1990-08-09 ','1975-02-21','38293923L','Topaz Illán, Carlos',0,3200000),
 (5,'ADMZS','1239','1976-08-07 ','1958-03-08','38223923T','Alada Veraz, Juana',1,6200000),
 (6,'JEFZS','23838','1991-08-01 ','1969-06-03','26454122D','Gozque Altanero, Cándido',1,5000000),
 (7,'PROZS',NULL,'1994-06-30 ','1975-08-07','47123132D','Forzado López, Galeote',0,1600000),
 (8,'PROZS',NULL,'1994-08-15 ','1976-06-15','32132154H','Mascullas Alto, Eloísa',1,1600000),
 (9,'PROZS','12124','1982-06-10 ','1968-07-19','11312121D','Mando Correa, Rosa',2,3100000),
 (10,'PROZS',NULL,'1993-11-02 ','1975-01-07','32939393D','Mosc Amuerta, Mario',0,1300000);

INSERT INTO  hijo  ( CodEmp , NumHij , FecNaHi , NomHi ) VALUES
 (1,1,'1989-06-07','Saladino Oropel, Flavia'),
 (3,1,'1990-09-12','Monforte Lemos, Jesús'),
 (5,1,'1982-03-06','Pastora Alada, Mateo'),
 (8,1,'1994-03-14','Fuerte Mascullas, Anacleto'),
 (9,1,'1988-02-28','León Mando, Elvira'),
 (9,2,'1990-07-18','León Mando, Plácido');

INSERT INTO  habemp  ( CodHab , CodEmp , NivHab ) VALUES
 ('GEREN',1,10),
 ('RELPU',1,9),
 ('MARKE',3,9),
 ('GESCO',5,9),
 ('RELPU',5,8),
 ('FONTA',8,7);

SET FOREIGN_KEY_CHECKS=1;
