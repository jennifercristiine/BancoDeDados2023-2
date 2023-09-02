/*Exclui o banco de dados */
drop database if exists test_data_types;
/*Exclui o banco de dados */
create database test_data_types;

use test_data_types;

CREATE TABLE `test_int` (
`idtest_int` int NOT NULL,
`bigint` bigint(20) unsigned zerofill DEFAULT NULL,
`int` int(10) unsigned zerofill DEFAULT NULL,
`tinyint` tinyint(3) unsigned zerofill DEFAULT NULL,
PRIMARY KEY (`idtest_int`)
);

INSERT INTO `test_data_types`.`test`
(`ídtest_int`),
`bigint`,
`int`,
`tinyint`)
VALUES
(2,255,255,255);
 
 /*Nova tabela com set e AUTO_INCREMENT*/
 CREATE TABLE test_set(
 
`ID` INT NOT NULL AUTO_INCREMENT,
`teste_set_linguagem_prog` SET('Java', 'Python','Android','PHP'),
 PRIMARY KEY (´Id´)
 );
 
 /* INSERE NA TABELA COM SET*/
 /* NÃO FAZ DIFERENCA A ORDEM DE INSERCAO OU SE TEM DUPLICADOS */
INSERT INTO `test_set`
(`test_set_linguagem_prog`)
VALUES
('Java, PHP'),
('PHP, Java'),
('Java, PHP, java'),
('Java, PHP, java'),
('Java, PHP, PHP'),
('Java, Python,PHP');


/*enum*/

CREATE table `test_enum` (
`idtest_enum` INT NOT NULL auto_increment
`test_enum_genero` ENUM('Masculino', 'Feminino') NULL,
`test_enum_tam_roupa` ENUM ('P'