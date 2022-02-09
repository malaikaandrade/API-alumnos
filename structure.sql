CREATE SCHEMA `alumnos_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci ;
SET FOREIGN_KEY_CHECKS=0;

CREATE TABLE `alumnos_db`.`alumno`(
  `matricula` INT NOT NULL AUTO_INCREMENT,
  `nombres` VARCHAR(200) NOT NULL,
  `apellidos` VARCHAR(455) NOT NULL,
  `carrera` VARCHAR(455) NOT NULL,
  UNIQUE INDEX `matricula_UNIQUE` (`matricula` ASC) VISIBLE,
  PRIMARY KEY (`matricula`));
  
  CREATE TABLE `alumnos_db`.`materia` (
  `id_materia` INT NOT NULL AUTO_INCREMENT,
  `materia` VARCHAR(200) NOT NULL,
  `promedio` DECIMAL(20) NULL,
  `semestre` VARCHAR(45) NULL,
  PRIMARY KEY (`id_materia`),
  UNIQUE INDEX `id_materia_UNIQUE` (`id_materia` ASC) VISIBLE);
  
  ALTER TABLE `alumnos_db`.`materia` 
ADD COLUMN `id_matricula` INT NULL AFTER `semestre`;

ALTER TABLE `alumnos_db`.`materia` 
ADD INDEX `fk_id_matricula_idx` (`id_matricula` ASC) VISIBLE;
;
ALTER TABLE `alumnos_db`.`materia` 
ADD CONSTRAINT `fk_id_matricula`
  FOREIGN KEY (`id_matricula`)
  REFERENCES `alumnos_db`.`alumno` (`matricula`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;