-- MySQL Script generated by MySQL Workbench
-- 03/11/19 20:23:40
-- Model: New Model    Version: 1.0
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
-- Table `mydb`.`User`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`User` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `part` VARCHAR(45) NOT NULL,
  `qq` VARCHAR(45) NULL,
  `phone` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Passage`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Passage` (
  `title` VARCHAR(45) NOT NULL,
  `link` VARCHAR(45) NULL,
  `phraseNum` INT NULL,
  `readNum` INT NULL,
  `commentNum` INT NULL,
  `date` DATE NULL,
  PRIMARY KEY (`title`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Message`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Message` (
  `msgID` INT NOT NULL,
  `content` VARCHAR(200) NULL,
  `date` DATETIME NULL,
  `messager` INT NULL,
  PRIMARY KEY (`msgID`),
  INDEX `messager_id_idx` (`messager` ASC),
  CONSTRAINT `messager_id`
    FOREIGN KEY (`messager`)
    REFERENCES `mydb`.`User` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ViewHistroy`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`ViewHistroy` (
  `hsty_ID` INT NOT NULL,
  `usr_id` INT NULL,
  `date` DATETIME NULL,
  PRIMARY KEY (`hsty_ID`),
  INDEX `viewer_id_idx` (`usr_id` ASC),
  CONSTRAINT `viewer_id`
    FOREIGN KEY (`usr_id`)
    REFERENCES `mydb`.`User` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;