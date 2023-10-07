create database	 if not exists projeto;

use projeto;

create table if not	exists pai ( 
pai_id	int not null auto_increment,
primary key	(pai_id)
);

drop table filho;
CREATE TABLE IF NOT EXISTS filho (
id INT PRIMARY KEY AUTO_INCREMENT,
fk_pai_id INT,
CONSTRAINT FOREIGN KEY (fk_pai_id)
REFERENCES pai(pai_id)
);

insert into pai
(pai_id)
values	
(1);

select * from pai;

INSERT INTO filho
(id, fk_pai_id)
values
(1,1);

select * from filho;

DELETE FROM pai WHERE pai_id = 1;

SELECT * FROM filho;

describe pai;

create table  departamento
(
idDepartamento INT primary KEY	auto_increment,
nome VARCHAR(30)
);

create table funcionario
(
idFuncionario INT auto_increment primary key,
iddept INT,
Nome Varchar(30),
CPF char(11) unique,
Salario dec(10,2),
constraint func_dept foreign key (iddept)
references departamento(idDepartamento)
ON DELETE SET NULL
ON UPDATE cascade
);

use projeto;
insert into departamento
(nome)
values
("RH"),
("Finanças"),
("Tecnologia");

SELECT * FROM departamento;

insert into funcionario
(iddept, nome, cpf, salario)
values
(1,"Felipe", "11223344556", 90000),
(2,"Estrela", "12345678912", 4000);

SELECT 
*
from departamento;

SELECT *
from funcionario
where iddept = 1;

select *
from funcionario
where(iddept = 1 OR iddept = 3) AND salario >10000;

select distinct salario 
from funcionario;

select nome
from funcionario 
order by  nome ASC;

SELECT * FROM funcionario
where Nome Like 'E%';

SELECT * 
FROM funcionario
where Nome Like '%A';

SELECT * 
FROM funcionario
where Nome Like '%L%';

update funcionario
SET	salario = 7000
where idfuncionario = 2; 

DELETE FROM funcionario
where idFuncionario = 1;
