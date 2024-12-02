DROP DATABASE idiomas;
CREATE DATABASE idiomas CHARACTER SET utf8 COLLATE utf8_general_ci;
USE idiomas;

CREATE TABLE CAPITAL (
    idCapital INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL);

CREATE TABLE PAIS (
    idPais INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(64) NOT NULL,
    capital INT,
    CONSTRAINT fk_pais_capital FOREIGN KEY (capital) REFERENCES CAPITAL (idCapital));

CREATE TABLE IDIOMA (
    idIdioma INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL);

CREATE TABLE IDIOMAPAIS (
    pais INT NOT NULL,
    idioma INT NOT NULL,
    PRIMARY KEY (pais, idioma),
    CONSTRAINT fk_ip_pais FOREIGN KEY (pais) REFERENCES PAIS (idPais),
    CONSTRAINT fk_ip_idioma FOREIGN KEY (idioma) REFERENCES IDIOMA (idIdioma));

CREATE TABLE POBLACION (
    pais INT,
    anyo YEAR(4),
    poblacion INT NOT NULL,
    PRIMARY KEY (pais, anyo),
    CONSTRAINT fk_pob_pais FOREIGN KEY (pais) REFERENCES PAIS (idPais));

