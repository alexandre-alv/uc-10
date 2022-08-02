CREATE TABLE veiculo (
Id int(11) NOT NULL AUTO_INCREMENT,
Placa varchar(10) NOT NULL,
Marca varchar(10) NOT NULL,
Modelo varchar(10) NOT NULL,
PRIMARY KEY (Id)
);

CREATE TABLE funcionario (
Id int(10) NOT NULL AUTO_INCREMENT,
Nome varchar(20) NOT NULL,
Matricula int(10) NOT NULL,
VeiculoId int(10)NOT NULL,
PRIMARY KEY (Id),
FOREIGN KEY (VeiculoId) REFERENCES veiculo(id) 
);

INSERT INTO veiculo (Placa, Marca, Modelo) VALUES
('XHJHU','BMW','serie III'),
('NFUHD','FERRARI','ITALIA'),
('NFUSG','NISSAN', 'GTR'),
('CAUCG','TOYOTA','SUPRA MK');

INSERT INTO funcionario (Nome, Matricula, VeiculoId) VALUES
('BRYAN','015223',1),
('TORETTO','014236',2),
('SHAWN','067346',3),
('LETTY','893544',4);