INSERT INTO `alumnos_db`.`alumno` (`matricula`, `nombres`, `apellidos`, `carrera`) VALUES ('3130', 'Malaika Mariana', 'Andrade Hernandez', 'Biologia');
INSERT INTO `alumnos_db`.`alumno` (`matricula`, `nombres`, `apellidos`, `carrera`) VALUES ('3131', 'Donaldo', 'Fernandez', 'Montenegro');
INSERT INTO `alumnos_db`.`alumno` (`matricula`, `nombres`, `apellidos`, `carrera`) VALUES ('3132', 'Juan', 'Perez', 'Garcia');
INSERT INTO `alumnos_db`.`alumno` (`matricula`, `nombres`, `apellidos`, `carrera`) VALUES ('3133', 'Juana', 'Juarez', 'Carreon');
INSERT INTO `alumnos_db`.`alumno` (`matricula`, `nombres`, `apellidos`) VALUES ('3134', 'Jorge', 'Andrade');

UPDATE `alumnos_db`.`alumno` SET `apellidos` = 'Andrade Garrido', `carrera` = 'Biologia' WHERE (`matricula` = '3134');
UPDATE `alumnos_db`.`alumno` SET `apellidos` = 'Fernandez Montenegro', `carrera` = 'Biologia' WHERE (`matricula` = '3131');
UPDATE `alumnos_db`.`alumno` SET `apellidos` = 'Perez Garcia', `carrera` = 'Biologia' WHERE (`matricula` = '3132');
UPDATE `alumnos_db`.`alumno` SET `apellidos` = 'Juarez Carreon', `carrera` = 'Biologia' WHERE (`matricula` = '3133');

INSERT INTO `alumnos_db`.`materia` (`id_materia`, `materia`, `promedio`, `semestre`, `id_matricula`) VALUES ('1', 'Plantas I', '8.5', '2', '3130');
INSERT INTO `alumnos_db`.`materia` (`id_materia`, `materia`, `promedio`, `semestre`, `id_matricula`) VALUES ('2', 'Plantas sin semilla', '9', '2', '3131');
INSERT INTO `alumnos_db`.`materia` (`id_materia`, `materia`, `promedio`, `semestre`, `id_matricula`) VALUES ('3', 'Biologia Molecular', '7', '3', '3132');
INSERT INTO `alumnos_db`.`materia` (`id_materia`, `materia`, `promedio`, `semestre`, `id_matricula`) VALUES ('4', 'Biometria', '8', '3', '3133');
INSERT INTO `alumnos_db`.`materia` (`id_materia`, `materia`, `promedio`, `semestre`, `id_matricula`) VALUES ('5', 'Laboratorio', '10', '3', '3134');
