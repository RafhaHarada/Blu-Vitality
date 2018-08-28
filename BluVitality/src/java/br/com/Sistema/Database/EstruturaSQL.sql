DROP DATABASE IF EXISTS bluVitalityDatabase;
CREATE DATABASE IF NOT EXISTS bluVitalityDatabase;
USE bluVitalityDatabase;

CREATE TABLE usuarios(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    estado_civil VARCHAR(100) NOT NULL,
    idade TINYINT NOT NULL,
    sexo CHAR NOT NULL,
    login VARCHAR(100) NOT NULL,
    senha VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) NOT NULL,
    rg VARCHAR(100) NOT NULL,
    telefone VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
	complemento VARCHAR(100) NOT NULL,
	cidade VARCHAR(100) NOT NULL,
	UF VARCHAR(2) NOT NULL,
    naturalidade VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    nome_fic VARCHAR(100) NOT NULL
);

INSERT INTO usuarios (nome,estado_civil,idade,sexo,login,senha,cpf,rg,telefone,email,endereco,complemento,cidade,UF,naturalidade,data_nascimento,nome_fic) VALUES
('Rafael','solteiro',18,'M','RafhaHarada','R#h467913','123.456.789-09','54.321.987-2','47997835153','rafaelegal22@outlook.com','Rua Alguma Coisa Que Não Sei, 244, Jardim Inexistente','-','Blumenau','SC','SP','2000-03-24','-'),
('Cidmar','solteiro',19,'M','CidmarDeBoa','C#b789456','789.456.123-09','321.987.54-2','47978945612','cidmardeboa@outlook.com','Rua Alguma Coisa Que Não Sei, 255, Jardim Inexistente','Bl A Apto 100','Blumenau','SC','MS','1999-12-10','-'),
('Nattana','solteira',20,'F','NattanaNaLagoa','N#l123456','456.123.789-09','32.154.987-2','47932165498','nattananalagoa@outlook.com','Rua Alguma Coisa Que Não Sei, 266, Jardim Inexistente','-','Blumenau','SC','MG','1998-05-25','-'),
('Gustavo','solteiro',21,'M','GustavoBeleza','G#b147896','123.789.456-09','984.321.75-2','47974185296','gustavobeleza@outlook.com','Rua Alguma Coisa Que Não Sei, 277, Jardim Inexistente','-','Blumenau','SC','AC','1997-11-04','-'),
('Luana','solteira',22,'F','LuanaJoinha','L#j123698','789.123.456-09','987.421.35-2','47936925814','luanajoinha@outlook.com','Rua Alguma Coisa Que Não Sei, 288, Jardim Inexistente','-','Blumenau','SC','PE','1996-08-30','-');

CREATE TABLE cargos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    salario DOUBLE NOT NULL,
    carga_horaria TIME
);

INSERT INTO cargos (nome,salario,carga_horaria) VALUES
('Médico',99999.05,'20:00:00'),
('Gerente',999999.05,'10:00:00'),
('Dono',9999999.05,'03:00:00'),
('Recepcionista',2100,'08:00:00'),
('Limpeza',1100,'08:00:00');

CREATE TABLE funcionarios(
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_cargo INT NOT NULL,
    ativo BOOLEAN,
    FOREIGN KEY(id_usuario) REFERENCES usuarios(id),
    FOREIGN KEY(id_cargo) REFERENCES cargos(id)
);

INSERT INTO funcionarios (id_usuario,id_cargo,ativo) VALUES
(1,2,TRUE),
(3,1,TRUE),
(4,1,TRUE),
(5,1,TRUE);

CREATE TABLE servicos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_funcionario INT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(100) NOT NULL,
    tempo_execucao TIME,
    FOREIGN KEY(id_funcionario) REFERENCES funcionarios(id)
);

INSERT INTO servicos (id_funcionario,nome,descricao,tempo_execucao) VALUES
(1,'Recrutar recrutadores','Recrutar recrutadores eficientes.','02:00:00'),
(2,'"Trocar" um pulmão','Paciente levou um tiro de escopeta no pulmão direito, trocar o pulmão inteiro.','00:30:00'),
(3,'Lavagem cerebral','Paciente jogou League of Legends, limpar toda a sujeira do cerebro, colocar Dark Souls no lugar.','22:50:00'),
(4,'"Trocar" um coração','Paciente foi traido, dar remédios anti depressivos.','03:00:00');
