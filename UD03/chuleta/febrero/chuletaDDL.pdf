-- CHULETA DE SQL PARA MARIADB

-- 0. CREACIÓN DE BASES DE DATOS (DDL) y acceso
 CREATE DATABASE [IF NOT EXISTS] nombre_base_datos;
 USE nombre_base_datos;
-- 1. CREACIÓN DE TABLAS (DDL)
CREATE TABLE nombre_tabla (
    columna1 INT NOT NULL AUTO_INCREMENT,  -- Ejemplo de columna autoincremental
    columna2 VARCHAR(100) NOT NULL,       -- Texto con un máximo de 100 caracteres
    columna3 DATE DEFAULT CURRENT_DATE,  -- Fecha con valor por defecto actual
    columna4 DECIMAL(10, 2),              -- Número decimal
    columna5 INT,
    columna6 VARCHAR(50),
    PRIMARY KEY (columna1),               -- Clave primaria
    CONSTRAINT chk_columna4 CHECK (columna4 > 0), -- Restricción CHECK nombrada
    CONSTRAINT uq_columna2 UNIQUE (columna2),    -- Restricción UNIQUE nombrada
    CONSTRAINT fk_columna5 FOREIGN KEY (columna5) REFERENCES otra_tabla(columna_referencia) ON DELETE CASCADE -- Clave foránea nombrada
);

-- 2. ALTERAR TABLAS (ALTER)

-- Añadir una nueva columna
ALTER TABLE nombre_tabla ADD nueva_columna VARCHAR(50) DEFAULT 'Desconocido';

-- Añadir una columna después de otra
ALTER TABLE nombre_tabla ADD nueva_columna2 INT AFTER columna2;

-- Modificar una columna existente
ALTER TABLE nombre_tabla MODIFY columna_existente INT NOT NULL;

-- Eliminar una columna
ALTER TABLE nombre_tabla DROP COLUMN columna_a_eliminar;

-- Añadir una clave foránea
ALTER TABLE nombre_tabla ADD CONSTRAINT fk_columna FOREIGN KEY (columna4) REFERENCES otra_tabla(columna_referencia);

-- Eliminar una restricción por nombre
ALTER TABLE nombre_tabla DROP CONSTRAINT chk_columna4; -- Para CHECK o UNIQUE nombrados
ALTER TABLE nombre_tabla DROP FOREIGN KEY fk_columna5; -- Para claves foráneas

-- 3. ELIMINAR TABLAS Y ELEMENTOS (DROP Y TRUNCATE)

-- Eliminar una tabla
DROP TABLE nombre_tabla;

-- Eliminar una clave foránea
ALTER TABLE nombre_tabla DROP FOREIGN KEY fk_columna;

-- Vaciar completamente una tabla
TRUNCATE TABLE nombre_tabla;

-- 4. TIPOS DE DATOS EN MARIADB
-- Numeros: INT, BIGINT, DECIMAL(p, s), FLOAT, DOUBLE
-- Texto: CHAR(n), VARCHAR(n), TEXT, TINYTEXT, MEDIUMTEXT
-- Fechas: DATE, DATETIME, TIMESTAMP, TIME, YEAR
-- Otros: BOOLEAN, ENUM('valor1', 'valor2'), JSON

-- 5. INSERCIÓN, ACTUALIZACIÓN Y BORRADO DE DATOS

-- Insertar datos en una tabla
INSERT INTO nombre_tabla (columna1, columna2, columna3)
VALUES (1, 'Texto', '2025-01-01');

-- Actualizar datos en una tabla
UPDATE nombre_tabla
SET columna2 = 'Nuevo Texto'
WHERE columna1 = 1;

-- Eliminar datos de una tabla
DELETE FROM nombre_tabla
WHERE columna1 = 1;

-- 6. CONSULTAS ÚTILES

-- Seleccionar datos con filtro BETWEEN
SELECT *
FROM nombre_tabla
WHERE columna4 BETWEEN 10 AND 100;

-- Seleccionar datos con valores por defecto
SELECT *
FROM nombre_tabla
WHERE columna3 IS NULL;

-- 7. CREACIÓN DE ÍNDICES

-- Crear un índice simple
CREATE INDEX idx_nombre_columna
ON nombre_tabla (columna2);

-- Crear un índice único
CREATE UNIQUE INDEX idx_unico_columna
ON nombre_tabla (columna2);

-- 8. VISTAS EN MARIADB

-- Crear una vista
CREATE VIEW vista_nombre AS
SELECT columna1, columna2
FROM nombre_tabla
WHERE columna3 = CURDATE();

-- Eliminar una vista
DROP VIEW vista_nombre;
