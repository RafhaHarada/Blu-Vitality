--  Author  @Rafael Alipio Harada (rafhaharada@gmail.com)
--          @Luana Patricia Duarte (luanapatricia.blu@hotmail.com)
--          @Gustavo Rodrigues (gugaaroodrigues@gmail.com)


DROP DATABASE IF EXISTS bluVitalityDatabase;
CREATE DATABASE IF NOT EXISTS bluVitalityDatabase;
USE bluVitalityDatabase;

CREATE TABLE usuarios(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    estado_civil VARCHAR(100),
    idade TINYINT,
    sexo CHAR,
    login VARCHAR(100),
    senha VARCHAR(100),
    cpf VARCHAR(14),
    rg VARCHAR(100),
    telefone VARCHAR(100),
    email VARCHAR(100),
    endereco VARCHAR(100),
    complemento VARCHAR(100),
    cidade VARCHAR(100),
    uf VARCHAR(2),
    naturalidade VARCHAR(100),
    data_nascimento DATE,
    nome_fic VARCHAR(100),
    tipo_sanguineo VARCHAR(3),
    contato_emergencia VARCHAR(100),
    convenio BOOLEAN,
    colaborador BOOLEAN
);

INSERT INTO usuarios (nome,estado_civil,idade,sexo,login,senha,cpf,rg,telefone,email,endereco,complemento,cidade,UF,naturalidade,data_nascimento,nome_fic,tipo_sanguineo,contato_emergencia,convenio,colaborador) VALUES
('Rafael','solteiro',18,'M','func1','func1','123.456.789-09','54.321.987-2','47997835153','rafaelegal22@outlook.com','Rua Alguma Coisa Que Não Sei, 244, Jardim Inexistente','-','Blumenau','SC','SP','2000-03-24','-','A+','47997835153',TRUE,TRUE),
('Cidmar','solteiro',19,'M','admin2','admin2','789.456.123-09','321.987.54-2','47978945612','cidmardeboa@outlook.com','Rua Alguma Coisa Que Não Sei, 255, Jardim Inexistente','Bl A Apto 100','Blumenau','SC','MS','1999-12-10','Kahoot Master','O+','47997835153',TRUE,TRUE),
('Nattana','solteira',20,'F','user1','user1','456.123.789-09','32.154.987-2','47932165498','nattananalagoa@outlook.com','Rua Alguma Coisa Que Não Sei, 266, Jardim Inexistente','-','Blumenau','SC','MG','1998-05-25','-','A+','47997835153',TRUE,FALSE),
('Gustavo','solteiro',21,'M','admin','admin','123.789.456-09','984.321.75-2','47974185296','gustavobeleza@outlook.com','Rua Alguma Coisa Que Não Sei, 277, Jardim Inexistente','-','Blumenau','SC','AC','1997-11-04','-','A+','47997835153',TRUE,TRUE),
('Luana','solteira',22,'F','func2','func2','789.123.456-09','987.421.35-2','47936925814','luanajoinha@outlook.com','Rua Alguma Coisa Que Não Sei, 288, Jardim Inexistente','-','Blumenau','SC','PE','1996-08-30','-','A+','47997835153',TRUE,TRUE);

CREATE TABLE cargos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    especialidade VARCHAR(100),
    salario DOUBLE,
    carga_horaria TIME
);

INSERT INTO cargos (nome,especialidade,salario,carga_horaria) VALUES
('Medico','Cadiologista',99999.05,'20:00:00'),
('Gerente','',999999.05,'10:00:00'),
('Administrador','',9999999.05,'03:00:00'),
('Recepcionista','',2100,'08:00:00'),
('Limpeza','',1100,'08:00:00');

CREATE TABLE funcionarios(
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    id_cargo INT,
    tipo VARCHAR(100),
    FOREIGN KEY(id_usuario) REFERENCES usuarios(id),
    FOREIGN KEY(id_cargo) REFERENCES cargos(id)
);

INSERT INTO funcionarios (id_usuario,id_cargo,tipo) VALUES
(1,2,'funcionario'),
(2,1,'administrador'),
(3,1,''),
(4,3,'administrador'),
(5,1,'funcionario');

CREATE TABLE servicos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_funcionario INT,
    nome VARCHAR(100),
    descricao VARCHAR(100),
    tipo_de_urgencia varchar(100),
    FOREIGN KEY(id_funcionario) REFERENCES funcionarios(id)
);

INSERT INTO servicos (id_funcionario,nome,descricao,tipo_de_urgencia) VALUES
(1,'Recrutar recrutadores','Recrutar recrutadores eficientes.','URGÊNTE'),
(2,'"Trocar" um pulmão','Paciente levou um tiro de escopeta no pulmão direito, trocar o pulmão inteiro.','Semi - Urgênte'),
(3,'Lavagem cerebral','Paciente jogou League of Legends, limpar toda a sujeira do cerebro, colocar Dark Souls no lugar.','URGÊNTE'),
(4,'"Trocar" um coração','Paciente foi traido, dar remédios anti depressivos.','Não Urgênte');

CREATE TABLE eventos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    data_evento DATE,
    custo DOUBLE,
    receita DOUBLE
);

INSERT INTO eventos (nome,data_evento,custo,receita) VALUES
('Abertura do Hospital','2018-09-09',250000,0),
('Exercícios ao Ar Livre','2018-09-30',100000,256579),
('Palestra Sobre a Empresa','2018-10-15',350,0),
('Workshop','2018-10-20',590,0);

CREATE TABLE expedicao(
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    id_funcionario INT,
    tipo VARCHAR(100),
    nome VARCHAR(100),
    data_expedicao DATE,
    hora_expedicao TIME,
    custo DOUBLE,
    FOREIGN KEY(id_usuario) REFERENCES usuarios(id),
    FOREIGN KEY(id_funcionario) REFERENCES funcionarios(id)
);

INSERT INTO expedicao (id_usuario,id_funcionario,tipo,nome,data_expedicao,hora_expedicao,custo) VALUES
(1,5,'Exame','blabla','2018-09-10','10:00:00',250000),
(2,5,'Exame','blabla2','2018-10-01','10:30:00',100000),
(3,5,'Consulta','blabla3','2018-10-16','14:00:00',350),
(4,5,'Consulta','blabla4','2018-10-21','16:00:00',590);

CREATE TABLE quartos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    id_funcionario INT,
    numero_quarto INT,
    tipo VARCHAR(100),
    data_entrada DATE,
    data_saida DATE,
    estado VARCHAR(100),
    FOREIGN KEY(id_usuario) REFERENCES usuarios(id),
    FOREIGN KEY(id_funcionario) REFERENCES funcionarios(id)
);

INSERT INTO quartos (id_usuario, id_funcionario, numero_quarto, tipo ,data_entrada, data_saida, estado) VALUES
(1, 5, 1001,'UTI','2018-09-20','2018-09-10','ativo'),
(2, 5, 1002,'UTI','2018-09-20','2018-09-10','ativo'),
(3, 5, 1003,'UTI','2018-10-11','2018-10-03','inativo'),
(4, 5, 1004,'UTI','2018-10-11','2018-10-03','inativo');

CREATE TABLE receita(
    id INT AUTO_INCREMENT PRIMARY KEY,
    pagamento_convenio DOUBLE,
    pagamento_a_vista DOUBLE,
    data_receita DATE
);

CREATE TABLE custo(
    id INT AUTO_INCREMENT PRIMARY KEY,
    manutencao DOUBLE,
    salario_funcionarios DOUBLE,
    data_custo DATE
);

CREATE TABLE lucro(
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_receita DOUBLE,
    id_custo DOUBLE,
    data_lucro DATE,
    total DOUBLE,
    FOREIGN KEY(id_receita) REFERENCES receita(id),
    FOREIGN KEY(id_custo) REFERENCES custo(id)
);

CREATE TABLE convenio(
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    data_convenio DATE,
    pago BOOLEAN,
    empresa_nome VARCHAR(100),
    custo DOUBLE,
    FOREIGN KEY(id_usuario) REFERENCES usuarios(id)
);

INSERT INTO convenio (id_usuario,data_convenio,pago,empresa_nome,custo) VALUES
(1,'2018-10-25',TRUE,'SUS',1000),
(2,'2018-10-20',TRUE,'SUS',1000),
(3,'2018-10-15',TRUE,'SUS',1000),
(4,'2018-10-10',TRUE,'SUS',1000),
(5,'2018-10-05',TRUE,'SUS',1000);