INSERT INTO `easyCom`.`funcao` (`idFuncao`, `nmComponente`, `rotulo`, `descricao`, `ajudaCurta`, `fStatus`, `icone`, `idSuperior`) VALUES (1, 'actTabelas', 'Tabelas', 'Cadastros diversos nas tabelas do sistema', NULL, 'A', NULL, NULL);
INSERT INTO `easyCom`.`funcao` (`idFuncao`, `nmComponente`, `rotulo`, `descricao`, `ajudaCurta`, `fStatus`, `icone`, `idSuperior`) VALUES (2, 'actFinanceiro', 'Financeiro', 'Cadastros diversos nas tabelas do sistema', NULL, 'A', NULL, NULL);
INSERT INTO `easyCom`.`funcao` (`idFuncao`, `nmComponente`, `rotulo`, `descricao`, `ajudaCurta`, `fStatus`, `icone`, `idSuperior`) VALUES (3, 'actComercial', 'Comercial', NULL, NULL, 'A', NULL, NULL);
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema easyCom
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `easyCom` DEFAULT CHARACTER SET utf8 ;
USE `easyCom` ;

-- -----------------------------------------------------
-- Table `easyCom`.`funcao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `easyCom`.`funcao` (
  `idFuncao` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nmComponente` VARCHAR(100) NULL,
  `rotulo` VARCHAR(45) NULL,
  `descricao` VARCHAR(180) NULL,
  `ajudaCurta` VARCHAR(180) NULL,
  `fStatus` CHAR(1) NULL DEFAULT 'I',
  `icone` BLOB NULL,
  `idSuperior` INT UNSIGNED NULL,
  PRIMARY KEY (`idFuncao`),
  UNIQUE INDEX `idFuncao_UNIQUE` (`idFuncao` ASC) )
ENGINE = InnoDB;


INSERT INTO `easyCom`.`funcao` (`idFuncao`, `nmComponente`, `rotulo`, `descricao`, `ajudaCurta`, `fStatus`, `icone`, `idSuperior`) VALUES (4, 'actSuprimentos', 'Suprimentos', NULL, NULL, 'A', NULL, NULL);
INSERT INTO `easyCom`.`funcao` (`idFuncao`, `nmComponente`, `rotulo`, `descricao`, `ajudaCurta`, `fStatus`, `icone`, `idSuperior`) VALUES (99, 'actRelatorios', 'Relatórios', NULL, NULL, 'A', NULL, NULL);

INSERT INTO `easyCom`.`funcao` (`nmComponente`, `rotulo`, `descricao`, `ajudaCurta`, `fStatus`, `icone`, `idSuperior`) VALUES ('actEntidades', 'Entidades', NULL, NULL, 'A', NULL, 1);
INSERT INTO `easyCom`.`funcao` (`nmComponente`, `rotulo`, `descricao`, `ajudaCurta`, `fStatus`, `icone`, `idSuperior`) VALUES ('actObjetos', 'Objetos', NULL, NULL, 'A', NULL, 1);
INSERT INTO `easyCom`.`funcao` (`nmComponente`, `rotulo`, `descricao`, `ajudaCurta`, `fStatus`, `icone`, `idSuperior`) VALUES ('actContas', 'Contas Bancárias', NULL, NULL, 'A', NULL, 1);

INSERT INTO `easyCom`.`funcao` (`nmComponente`, `rotulo`, `descricao`, `ajudaCurta`, `fStatus`, `icone`, `idSuperior`) VALUES ('actCtaPagar', 'Contas a Pagar', NULL, NULL, 'A', NULL, 2);
INSERT INTO `easyCom`.`funcao` (`nmComponente`, `rotulo`, `descricao`, `ajudaCurta`, `fStatus`, `icone`, `idSuperior`) VALUES ('actCtaReceber', 'Contas a Receber', NULL, NULL, 'A', NULL, 2);
INSERT INTO `easyCom`.`funcao` (`nmComponente`, `rotulo`, `descricao`, `ajudaCurta`, `fStatus`, `icone`, `idSuperior`) VALUES ('actTesouraria', 'Tesouraria', NULL, NULL, 'A', NULL, 2);
INSERT INTO `easyCom`.`funcao` (`nmComponente`, `rotulo`, `descricao`, `ajudaCurta`, `fStatus`, `icone`, `idSuperior`) VALUES ('actFluxoCx', 'Fluxo de Caixa', NULL, NULL, 'A', NULL, 2);

INSERT INTO `easyCom`.`funcao` (`nmComponente`, `rotulo`, `descricao`, `ajudaCurta`, `fStatus`, `icone`, `idSuperior`) VALUES ('actProposta', 'Propostas', NULL, NULL, 'A', NULL, 3);
INSERT INTO `easyCom`.`funcao` (`nmComponente`, `rotulo`, `descricao`, `ajudaCurta`, `fStatus`, `icone`, `idSuperior`) VALUES ('actPedido', 'Pedido', NULL, NULL, 'A', NULL, 3);
INSERT INTO `easyCom`.`funcao` (`nmComponente`, `rotulo`, `descricao`, `ajudaCurta`, `fStatus`, `icone`, `idSuperior`) VALUES ('actPVD', 'PVD', NULL, NULL, 'A', NULL, 3);

INSERT INTO `easyCom`.`funcao` (`nmComponente`, `rotulo`, `descricao`, `ajudaCurta`, `fStatus`, `icone`, `idSuperior`) VALUES ('actPedCompra', 'Pedidos de Compra', NULL, NULL, 'A', NULL, 4);
INSERT INTO `easyCom`.`funcao` (`nmComponente`, `rotulo`, `descricao`, `ajudaCurta`, `fStatus`, `icone`, `idSuperior`) VALUES ('actEstoque', 'Estoque', NULL, NULL, 'A', NULL, 4);

set @idSuperior = null;
select * from funcao where idSuperior = @idSuperior or (idSuperior is null and @idSuperior is null);
select * from funcao
