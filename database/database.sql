SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Table `id15973617_database`.`recrutador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `id15973617_database`.`recrutador` (
  `idrecrutador` INT NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(50) NOT NULL,
  `senha` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`idrecrutador`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `id15973617_database`.`candidato`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `id15973617_database`.`candidato` (
  `idcandidato` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(15) NOT NULL,
  `sobrenome` VARCHAR(30) NOT NULL,
  `email` VARCHAR(60) NOT NULL,
  `linkedin` VARCHAR(100) NOT NULL,
  `nascimento` DATETIME NOT NULL,
  PRIMARY KEY (`idcandidato`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC),
  UNIQUE INDEX `linkedin_UNIQUE` (`linkedin` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `id15973617_database`.`tecnologia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `id15973617_database`.`tecnologia` (
  `idtecnologia` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`idtecnologia`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `id15973617_database`.`candidato_tecnologia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `id15973617_database`.`candidato_tecnologia` (
  `idcandidato` INT NOT NULL,
  `idtecnologia` INT NOT NULL,
  PRIMARY KEY (`idcandidato`, `idtecnologia`),
  INDEX `fk_candidato_has_tecnologia_tecnologia1_idx` (`idtecnologia` ASC),
  INDEX `fk_candidato_has_tecnologia_candidato_idx` (`idcandidato` ASC),
  CONSTRAINT `fk_candidato_has_tecnologia_candidato`
    FOREIGN KEY (`idcandidato`)
    REFERENCES `id15973617_database`.`candidato` (`idcandidato`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_candidato_has_tecnologia_tecnologia1`
    FOREIGN KEY (`idtecnologia`)
    REFERENCES `id15973617_database`.`tecnologia` (`idtecnologia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;