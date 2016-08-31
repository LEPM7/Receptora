-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`REMESAS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`REMESAS` (
  `ID_REMESA` INT NOT NULL,
  `NOMBRES_RECEPTOR` VARCHAR(30) NULL,
  `APPELLIDOS_RECEPTOR` VARCHAR(30) NULL,
  `COREO_RECEPTOR` VARCHAR(30) NULL,
  `DPI_RECEPTOR` VARCHAR(13) NULL,
  `MONTO` FLOAT NULL,
  `ESTADO` VARCHAR(15) NULL,
  `FECHA_ENVIO` DATETIME NULL,
  `FECHA_RECIBIDA` DATETIME NULL,
  `FECHA_ENTREGADA` DATETIME NULL,
  PRIMARY KEY (`ID_REMESA`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`EMISOR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`EMISOR` (
  `ID_EMISOR` INT NOT NULL,
  `NOMBRES_EMISOR` VARCHAR(30) NULL,
  `APELLIDOS_EMISOR` VARCHAR(30) NULL,
  `CORREO_ELECTRONICO_EMISOR` VARCHAR(30) NULL,
  `REMESAS_ID_REMESA` INT NOT NULL,
  PRIMARY KEY (`ID_EMISOR`),
  INDEX `fk_EMISOR_REMESAS_idx` (`REMESAS_ID_REMESA` ASC),
  CONSTRAINT `fk_EMISOR_REMESAS`
    FOREIGN KEY (`REMESAS_ID_REMESA`)
    REFERENCES `mydb`.`REMESAS` (`ID_REMESA`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
