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
    cpf VARCHAR(100) NOT NULL,
    rg VARCHAR(100) NOT NULL,
    telefone VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    naturalidade VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    nome_fic VARCHAR(100) NOT NULL
);

CREATE TABLE cargos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    salario DOUBLE NOT NULL,
    carga_horaria DATE
);

CREATE TABLE funcionarios(
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_cargo INT NOT NULL,
    ativo BOOLEAN,
    FOREIGN KEY(id_usuario) REFERENCES usuarios(id),
    FOREIGN KEY(id_cargo) REFERENCES cargos(id)
);

CREATE TABLE servicos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_funcionario INT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(100) NOT NULL,
    tempo_execucao  VARCHAR(100) NOT NULL,
    FOREIGN KEY(id_funcionario) REFERENCES funcionarios(id)
);