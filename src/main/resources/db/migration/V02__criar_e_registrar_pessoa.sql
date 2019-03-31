CREATE TABLE pessoa(	
	codigo SERIAL PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	ativo BOOLEAN NOT NULL,
	logradouro VARCHAR(100),
	numero VARCHAR(10),
	complemento VARCHAR(255),
	bairro VARCHAR(100),
	cep VARCHAR(15),
	cidade VARCHAR(50),
	estado VARCHAR(50)	
);

INSERT INTO pessoa(nome,ativo,logradouro,numero,complemento,bairro,cep,cidade,estado) VALUES ('Jean',true,'Avenida A','1','','a','5345','Londrina','PR');
INSERT INTO pessoa(nome,ativo,logradouro,numero,complemento,bairro,cep,cidade,estado) VALUES ('Moacir',true,'Avenida B','2','','B','5345','Londrina','PR');
INSERT INTO pessoa(nome,ativo,logradouro,numero,complemento,bairro,cep,cidade,estado) VALUES ('Rose',true,'Avenida C','3','','C','5345','Londrina','PR');
INSERT INTO pessoa(nome,ativo,logradouro,numero,complemento,bairro,cep,cidade,estado) VALUES ('Jessica',true,'Avenida D','4','','4D','5345','Londrina','PR');
INSERT INTO pessoa(nome,ativo,logradouro,numero,complemento,bairro,cep,cidade,estado) VALUES ('Marilene',true,'Avenida E','5','','E','5345','Londrina','PR');
INSERT INTO pessoa(nome,ativo,logradouro,numero,complemento,bairro,cep,cidade,estado) VALUES ('Chico',true,'Avenida F','6','','E','5345','Londrina','PR');
INSERT INTO pessoa(nome,ativo,logradouro,numero,complemento,bairro,cep,cidade,estado) VALUES ('Ronaldo',false,'Avenida G','7','','E','5345','Londrina','PR');
INSERT INTO pessoa(nome,ativo,logradouro,numero,complemento,bairro,cep,cidade,estado) VALUES ('Lucas',true,'Avenida T','8','','D','5345','Londrina','PR');
