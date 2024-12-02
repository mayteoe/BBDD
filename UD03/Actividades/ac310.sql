-- Inserción de 10 departamentos
INSERT INTO DEPARTAMENTO (codD, nombre, direcc) VALUES
(1, 'Recursos Humanos', 'Calle A, 123'),
(2, 'Finanzas', 'Calle B, 456'),
(3, 'IT', 'Calle C, 789'),
(4, 'Marketing', 'Calle D, 101'),
(5, 'Ventas', 'Calle E, 112'),
(6, 'Logística', 'Calle F, 131'),
(7, 'Producción', 'Calle G, 415'),
(8, 'Calidad', 'Calle H, 161'),
(9, 'Legal', 'Calle I, 718'),
(10, 'Innovación', 'Calle J, 192');

-- Inserción de 100 empleados
INSERT INTO EMPLEADO (dni, nombrec, salario, direcc, departamento) VALUES
-- Departamento 1: Recursos Humanos
('12345678A', 'Juan Pérez', 30000, 'Calle X, 123', 1),
('23456789B', 'Ana García', 32000, 'Calle Y, 456', 1),
('34567890C', 'Rosa Méndez', 31000, 'Calle Z, 789', 1),
('45678901D', 'Carlos Gutiérrez', 29500, 'Calle X, 789', 1),
('56789012E', 'Raquel Torres', 30500, 'Calle X, 654', 1),
('67890123F', 'Pedro Rivas', 33000, 'Calle X, 345', 1),
('78901234G', 'Lucía García', 35000, 'Calle Y, 789', 1),
('89012345H', 'Manuel López', 31000, 'Calle Y, 123', 1),
('90123456I', 'María Romero', 32000, 'Calle Z, 456', 1),
('01234567J', 'Esteban Morales', 30000, 'Calle Z, 789', 1),

-- Departamento 2: Finanzas
('09876543A', 'Laura Ruiz', 35000, 'Calle A, 111', 2),
('87654321B', 'David Ortiz', 29000, 'Calle B, 222', 2),
('76543210C', 'Sandra Peña', 28000, 'Calle C, 333', 2),
('65432109D', 'Tomás Gil', 31500, 'Calle D, 444', 2),
('54321098E', 'Claudia Rodríguez', 33000, 'Calle E, 555', 2),
('43210987F', 'Jorge Díaz', 30500, 'Calle F, 666', 2),
('32109876G', 'Carmen Pérez', 33500, 'Calle G, 777', 2),
('21098765H', 'Isabel Fernández', 32500, 'Calle H, 888', 2),
('10987654I', 'Raúl Gómez', 31000, 'Calle I, 999', 2),
('09876543J', 'Sara Torres', 34000, 'Calle J, 100', 2),

-- Departamento 3: IT
('22334455K', 'Mario Suárez', 40000, 'Calle P, 121', 3),
('33445566L', 'Lucía Fernández', 37000, 'Calle Q, 122', 3),
('44556677M', 'Héctor Gálvez', 39000, 'Calle R, 123', 3),
('55667788N', 'Javier Ruiz', 41000, 'Calle S, 124', 3),
('66778899O', 'Paula López', 38000, 'Calle T, 125', 3),
('77889900P', 'José Campos', 40500, 'Calle U, 126', 3),
('88990011Q', 'Elena García', 39500, 'Calle V, 127', 3),
('99001122R', 'Francisco Gómez', 38500, 'Calle W, 128', 3),
('10112233S', 'Victoria Sánchez', 42000, 'Calle X, 129', 3),
('11123344T', 'Luis Díaz', 39500, 'Calle Y, 130', 3),

-- Departamento 4: Marketing
('22233344U', 'Clara Jiménez', 36000, 'Calle A, 141', 4),
('33344455V', 'Fernando Ortega', 37000, 'Calle B, 142', 4),
('44455566W', 'Inés Navarro', 35000, 'Calle C, 143', 4),
('55566677X', 'Miguel Vázquez', 34000, 'Calle D, 144', 4),
('66677788Y', 'Patricia Ramos', 36500, 'Calle E, 145', 4),
('77788899Z', 'Álvaro Moreno', 34500, 'Calle F, 146', 4),
('88899900A', 'Andrea Espinosa', 35500, 'Calle G, 147', 4),
('99900011B', 'Iván Gil', 36000, 'Calle H, 148', 4),
('00011122C', 'Noelia López', 37000, 'Calle I, 149', 4),
('11122233D', 'Rubén Serrano', 35000, 'Calle J, 150', 4),

-- Departamento 5: Ventas
('22211100E', 'Pedro Álvarez', 38000, 'Calle M, 151', 5),
('33322211F', 'Cristina Herrera', 39000, 'Calle N, 152', 5),
('44433322G', 'Sergio Blanco', 36500, 'Calle O, 153', 5),
('55544433H', 'Natalia Prieto', 37500, 'Calle P, 154', 5),
('66655544I', 'Martín Castro', 39500, 'Calle Q, 155', 5),
('77766655J', 'Sofía Rivera', 38500, 'Calle R, 156', 5),
('88877766K', 'Adrián Vega', 36500, 'Calle S, 157', 5),
('99988877L', 'Gabriela Álvarez', 37500, 'Calle T, 158', 5),
('00099988M', 'Lucas Herrera', 39500, 'Calle U, 159', 5),
('11100099N', 'Raquel Navarro', 38000, 'Calle V, 160', 5),

-- Departamento 6: Logística
('12312345O', 'Rocío Nieto', 31000, 'Calle A, 201', 6),
('23423456P', 'Tomás Castillo', 29000, 'Calle B, 202', 6),
('34534567Q', 'Inma Delgado', 30500, 'Calle C, 203', 6),
('45645678R', 'Sonia Pascual', 29500, 'Calle D, 204', 6),
('56756789S', 'Ángel Herrero', 32000, 'Calle E, 205', 6),
('67867890T', 'Patricia Cruz', 33000, 'Calle F, 206', 6),
('78978901U', 'Miguel Castillo', 31000, 'Calle G, 207', 6),
('89089012V', 'Beatriz Soria', 31500, 'Calle H, 208', 6),
('90190123W', 'Jaime Campos', 30000, 'Calle I, 209', 6),
('01201234X', 'Alicia Romero', 32000, 'Calle J, 210', 6),

-- Departamento 7: Producción
('11223344Y', 'María Ramos', 35000, 'Calle K, 301', 7),
('22334455Z', 'Daniel Morales', 36500, 'Calle L, 302', 7),
('33445566A', 'Joaquín López', 34000, 'Calle M, 303', 7),
('44556677B', 'Silvia Fernández', 33000, 'Calle N, 304', 7),
('55667788C', 'Antonio Gómez', 35000, 'Calle O, 305', 7),
('66778899D', 'Teresa Navarro', 34500, 'Calle P, 306', 7),
('77889900E', 'Roberto Ruiz', 37000, 'Calle Q, 307', 7),
('88990011F', 'Sara Hernández', 35500, 'Calle R, 308', 7),
('99001122G', 'Fernando Pérez', 34000, 'Calle S, 309', 7),
('10112233H', 'Clara Díaz', 33000, 'Calle T, 310', 7),

-- Departamento 8: Calidad
('11223344I', 'Nuria Ruiz', 31500, 'Calle U, 401', 8),
('22334455J', 'José Ortega', 32500, 'Calle V, 402', 8),
('33445566K', 'Laura Martínez', 31000, 'Calle W, 403', 8),
('44556677L', 'Carlos Romero', 33500, 'Calle X, 404', 8),
('55667788M', 'Marta Álvarez', 32000, 'Calle Y, 405', 8),
('66778899N', 'Luis Suárez', 34000, 'Calle Z, 406', 8),
('77889900O', 'Susana Sánchez', 32500, 'Calle A, 407', 8),
('88990011P', 'Ignacio Díaz', 31500, 'Calle B, 408', 8),
('99001122Q', 'Ángeles Ramos', 33000, 'Calle C, 409', 8),
('10112233R', 'Andrés Rubio', 34000, 'Calle D, 410', 8),

-- Departamento 9: Legal
('11223344S', 'Pedro Cortés', 36000, 'Calle E, 501', 9),
('22334455T', 'Inés Ramírez', 35500, 'Calle F, 502', 9),
('33445566U', 'Diego Aguilar', 34000, 'Calle G, 503', 9),
('44556677V', 'Alicia Gómez', 33000, 'Calle H, 504', 9),
('55667788W', 'Miguel González', 36000, 'Calle I, 505', 9),
('66778899X', 'Elena Martínez', 34000, 'Calle J, 506', 9),
('77889900Y', 'Carmen Álvarez', 35000, 'Calle K, 507', 9),
('88990011Z', 'Gonzalo Hernández', 34500, 'Calle L, 508', 9),
('99001122A', 'Esther Rodríguez', 33000, 'Calle M, 509', 9),
('10112233B', 'Javier Pérez', 35500, 'Calle N, 510', 9),

-- Departamento 10: Innovación
('22334455C', 'Ana Martínez', 37000, 'Calle O, 601', 10),
('33445566D', 'Miguel Ruiz', 38500, 'Calle P, 602', 10),
('44556677E', 'David Gil', 36500, 'Calle Q, 603', 10),
('55667788F', 'Isabel Romero', 35500, 'Calle R, 604', 10),
('66778899G', 'Lorena Sánchez', 37500, 'Calle S, 605', 10),
('77889900H', 'Ignacio Herrera', 36000, 'Calle T, 606', 10),
('88990011I', 'Fernando Alonso', 37000, 'Calle U, 607', 10),
('99001122J', 'Julia Gutiérrez', 38000, 'Calle V, 608', 10),
('10112233K', 'Roberto Morales', 36500, 'Calle W, 609', 10),
('11223344L', 'Rocío Aguilar', 37500, 'Calle X, 610', 10);
