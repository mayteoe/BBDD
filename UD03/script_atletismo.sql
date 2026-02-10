-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS atletismo_25;

-- Usar la base de datos creada
USE atletismo_25;


CREATE TABLE disciplinas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    es_masculina BOOLEAN NOT NULL,
    distancia INT NOT NULL
);
CREATE TABLE nacionalidad (
    nombre_pais VARCHAR(100) NOT NULL,
    codpais VARCHAR(3) PRIMARY KEY
);

CREATE TABLE competicion (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL,
    ubicacion VARCHAR(255) NOT NULL,
    codpais varchar(3) NOT NULL,
    FOREIGN KEY(codpais) REFERENCES nacionalidad(codpais) ON UPDATE CASCADE
);

CREATE TABLE eventos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_competicion INT NOT NULL,
    id_disciplina INT NOT NULL,
    fecha DATE NOT NULL,
    viento FLOAT,
    FOREIGN KEY (id_competicion) REFERENCES competicion(id),
    FOREIGN KEY (id_disciplina) REFERENCES disciplinas(id)
);




CREATE TABLE atletas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    pais VARCHAR(3) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    FOREIGN KEY (pais) REFERENCES nacionalidad(codpais)
);

CREATE TABLE resultados (
    id_evento INT NOT NULL,
    id_atleta INT NOT NULL,
    resultado DECIMAL(6,3),
    puesto INT,
    es_descalificado BOOLEAN DEFAULT FALSE,
    no_comienza BOOLEAN DEFAULT FALSE,
    no_finaliza BOOLEAN DEFAULT FALSE,
    PRIMARY KEY (id_evento, id_atleta),
    FOREIGN KEY (id_evento) REFERENCES eventos(id),
    FOREIGN KEY (id_atleta) REFERENCES atletas(id)
);



INSERT INTO disciplinas (nombre, es_masculina, distancia)
VALUES 
('100m Masculino', TRUE, 100),
('200m Masculino', TRUE, 200),
('400m Masculino', TRUE, 400),
('800m Masculino', TRUE, 800),
('1500m Masculino', TRUE, 1500),
('100m Femenino', FALSE, 100),
('200m Femenino', FALSE, 200),
('400m Femenino', FALSE, 400),
('800m Femenino', FALSE, 800),
('1500m Femenino', FALSE, 1500);


INSERT INTO nacionalidad (nombre_pais, codpais)
VALUES 
('Jamaica','JAM'),
('Estados Unidos','USA'),
('Canadá','CAN'),
('Sudáfrica','RSA'),
('Costa de Marfil','CMF'),
('Francia','FRA'),
('Hungria','HUN'),
('Japón','JPN'),
('Sudafrica','SAF');

INSERT INTO competicion (nombre, fecha_inicio, fecha_fin, ubicacion,codpais)
VALUES 
('Juegos Olímpicos de París 2024', '2024-07-26', '2024-08-11', 'Estadio Olímpico, París','FRA'),
('Mundial de Atletismo 2023', '2023-08-19', '2023-08-27', 'Budapest(HUN)', 'HUN'),
('Mundial de Atletismo 2022', '2022-07-15', '2022-07-24', 'Eugene, Oregón (USA)','USA'),
('Mundial de Atletismo 2021', '2021-07-23', '2021-08-08', 'Tokio (JPN)','JPN');


-- Insertar más atletas
-- Insertar atletas
INSERT INTO atletas (nombre, apellido, pais, fecha_nacimiento)
VALUES 
('Usain', 'Bolt', 'JAM', '1986-08-21'),               -- Jamaica
('Justin', 'Gatlin', 'USA', '1982-02-10'),             -- Estados Unidos
('André', 'De Grasse', 'CAN', '1994-11-10'),          -- Canadá
('Yohan', 'Blake', 'JAM', '1989-12-26'),              -- Jamaica
('Noah', 'Lyles', 'USA', '1997-07-18'),               -- Estados Unidos
('Elaine', 'Thompson-Herah', 'JAM', '1992-06-28'),    -- Jamaica
('Shelly-Ann', 'Fraser-Pryce', 'JAM', '1986-12-27'),  -- Jamaica
('Karsten', 'Warholm', 'SAF', '1996-02-28'),          -- Sudáfrica
('Wayde', 'van Niekerk', 'SAF', '1992-07-15'),        -- Sudáfrica
('Marie-Josée', 'Ta Lou', 'CMF', '1989-06-18');       -- Costa de Marfil



-- Insertar 10 eventos para los Juegos Olímpicos de París 2024
INSERT INTO eventos (id_competicion, id_disciplina, fecha, viento)
VALUES 
(1, 1, '2024-07-27', 0.3),  -- 100m Masculino
(1, 2, '2024-07-29', -0.4), -- 200m Masculino
(1, 3, '2024-07-30', 0.1),  -- 400m Masculino
(1, 4, '2024-08-01', 0.0),  -- 800m Masculino
(1, 5, '2024-08-03', 0.2),  -- 1500m Masculino
(1, 6, '2024-08-05', -0.5), -- 100m Femenino
(1, 7, '2024-08-06', 0.3),  -- 200m Femenino
(1, 8, '2024-08-07', -0.3), -- 400m Femenino
(1, 9, '2024-08-08', 0.1);  -- 800m Femenino  -- 1500m Femenino


-- Insertar 10 eventos para el Mundial de Atletismo 2023 en Budapest
INSERT INTO eventos (id_competicion, id_disciplina, fecha, viento)
VALUES 
(2, 1, '2023-08-19', 0.1),  -- 100m Masculino
(2, 2, '2023-08-20', 0.0),  -- 200m Masculino
(2, 3, '2023-08-21', -0.2), -- 400m Masculino
(2, 4, '2023-08-22', 0.4),  -- 800m Masculino
(2, 5, '2023-08-23', 0.3),  -- 1500m Masculino
(2, 6, '2023-08-24', -0.3), -- 100m Femenino
(2, 7, '2023-08-25', 0.2),  -- 200m Femenino
(2, 8, '2023-08-26', -0.1), -- 400m Femenino
(2, 9, '2023-08-27', 0.1),  -- 800m Femenino
(2, 10, '2023-08-28', 0.0);  -- 1500m Femenino


-- Juegos Olímpicos de París 2024:
-- Resultados para las nuevas disciplinas en los Juegos Olímpicos de París 2024
-- 200m Masculino
INSERT INTO resultados (id_evento, id_atleta, resultado, puesto, es_descalificado, no_comienza, no_finaliza)
VALUES 
(2, 1, '19.480', 1, FALSE, FALSE, FALSE),  -- Usain Bolt
(2, 2, '19.50', 2, FALSE, FALSE, FALSE),  -- Justin Gatlin
(2, 3, '19.68', 3, FALSE, FALSE, FALSE),  -- André De Grasse
(2, 4, NULL, NULL, TRUE, FALSE, FALSE),   -- Yohan Blake (Descalificado)
(2, 5, '19.92', 4, FALSE, FALSE, FALSE),  -- Noah Lyles
(7, 6, NULL, NULL, FALSE, FALSE, TRUE),   -- Elaine Thompson-Herah (No finalizó)
(7, 7, NULL,NULL, FALSE, TRUE, FALSE),   -- Shelly-Ann Fraser-Pryce (No comenzó)
(7, 8, '20.05', 1, FALSE, FALSE, FALSE),  -- Karsten Warholm
(7, 9, '20.10', 2, FALSE, FALSE, FALSE),  -- Wayde van Niekerk
(7, 10, '20.15', 3, FALSE, FALSE, FALSE); -- Marie-Josée Ta Lou

-- 100m Femenino
INSERT INTO resultados (id_evento, id_atleta, resultado, puesto, es_descalificado, no_comienza, no_finaliza)
VALUES 
(6, 7, '10.05', 1, FALSE, FALSE, FALSE),  -- Shelly-Ann Fraser-Pryce
(6, 6, '10.10', 2, FALSE, FALSE, FALSE),  -- Elaine Thompson-Herah
(1, 5, '8.15', 1, FALSE, FALSE, FALSE),  -- Noah Lyles
(1, 1, '8.20', 2, FALSE, TRUE, FALSE),   -- Usain Bolt (No comenzó)
(1, 2, NULL, NULL, TRUE, FALSE, FALSE),   -- Justin Gatlin (Descalificado)
(1, 3, NULL, NULL, FALSE, FALSE, TRUE),   -- André De Grasse (No finalizó)
(1, 4, '8.35', 3, FALSE, FALSE, FALSE),  -- Yohan Blake
(6, 8, null, NULL, FALSE, TRUE, FALSE),  -- Karsten Warholm --no comenzó
(6, 9, '10.45', 6, FALSE, FALSE, FALSE),  -- Wayde van Niekerk
(6, 10, '10.50', 7, FALSE, FALSE, FALSE); -- Marie-Josée Ta Lou

-- Mundial de Atletismo 2023 (Budapest):

-- 200m Masculino y femenino
INSERT INTO resultados (id_evento, id_atleta, resultado, puesto, es_descalificado, no_comienza, no_finaliza)
VALUES 
(12, 1, '19.50', 1, FALSE, FALSE, FALSE),  -- Usain Bolt
(12, 2, '19.55', 2, FALSE, FALSE, FALSE),  -- Justin Gatlin
(12, 3, NULL, NULL, TRUE, FALSE, FALSE),  -- André De Grasse(Descalificado)
(12, 4, '19.80', 3, FALSE, FALSE, FALSE),  -- Yohan Blake
(12, 5, '19.90', 4, FALSE, FALSE, FALSE),  -- Noah Lyles
(17, 6, '21.00',4, FALSE, FALSE, FALSE),   -- Elaine Thompson-Herah 
(17, 7, NULL, NULL, FALSE, TRUE, FALSE),   -- Shelly-Ann Fraser-Pryce (No comenzó)
(17, 8, '20.10', 1, FALSE, FALSE, FALSE),  -- Karsten Warholm
(17, 9, '20.20', 2, FALSE, FALSE, TRUE),   -- Wayde van Niekerk (No finalizó)
(17, 10, '20.30', 3, FALSE, FALSE, FALSE); -- Marie-Josée Ta Lou





