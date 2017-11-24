CREATE TABLE Funcionario (
  id_Funcionario serial,
  nome_Funcionario VARCHAR(100) NOT NULL,
  cpf_Funcionario VARCHAR(11) NOT NULL,
  cargo_Funcionario VARCHAR(45) NOT NULL,
  senha_Funcionario TEXT NOT NULL,
  rua_Funcionario VARCHAR(45) NOT NULL,
  cidade_Funcionario VARCHAR(45) NOT NULL,
  cep_Funcionario VARCHAR(8) NOT NULL,
  fone_Funcionario VARCHAR(11) NOT NULL
  );

CREATE TABLE Mesa (
  id_Mesa INT NOT NULL,
  lugares_Mesa numeric(1) ,
  ocupada_Mesa CHAR(1) ,
  reserva_Mesa CHAR(1) 
  );

CREATE TABLE Produto (
  id_Produto serial,
  nome_Produto VARCHAR(45) NOT NULL,
  preco_Produto FLOAT NOT NULL,
  observacoes VARCHAR(100) ,
  imagem varchar(50)
  );

CREATE TABLE MesaCliente (
  fk_id_Mesa INT NOT NULL,
  fk_id_Reserva INT ,
  total_consumido FLOAT ,
  Pago CHAR(1)
 );

CREATE TABLE Pagamento (
  id_Pagamento INT NOT NULL,
  fk_id_Mesa INT NOT NULL,
  valor_Pagamento float NOT NULL
);

CREATE TABLE Reserva (
  id_Reserva serial,
  nome_Cliente VARCHAR(45) NOT NULL,
  fk_id_Mesa INT NOT NULL,
  data_Reserva DATE NOT NULL,
  hora_Reserva TIME NOT NULL
  );

CREATE TABLE Pedido(
  id_Pedido serial,
  fk_id_Produto INT NOT NULL,
  fk_id_Mesa INT NOT NULL,
  fk_id_Funcionario INT NOT NULL,
  quant_Pedido numeric(2) ,
  observacoes VARCHAR(100)
  );
  
  alter table Funcionario add PRIMARY KEY (id_Funcionario);

  alter table Mesa add PRIMARY KEY (id_Mesa);

  alter table Produto add PRIMARY KEY (id_Produto);

  alter table MesaCliente add  PRIMARY KEY (fk_id_Mesa);
  
  alter table Pagamento add PRIMARY KEY (id_Pagamento);

  alter table Reserva add PRIMARY KEY (id_Reserva);

  alter table Pedido add PRIMARY KEY (id_Pedido);

  alter table MesaCliente add CONSTRAINT fk_id_Mesa FOREIGN KEY (fk_id_Mesa) REFERENCES Mesa (id_Mesa);

  alter table MesaCliente add CONSTRAINT fk_id_Reserva FOREIGN KEY (fk_id_Reserva) REFERENCES Reserva (id_Reserva);

  alter table Pagamento add CONSTRAINT fk_id_Mesa FOREIGN KEY (fk_id_Mesa) REFERENCES MesaCliente(fk_id_Mesa);
  
  alter table Reserva add CONSTRAINT fk_id_Mesa FOREIGN KEY (fk_id_Mesa) REFERENCES Mesa(id_Mesa);
 
  
  alter table Pedido add CONSTRAINT fk_id_Produto FOREIGN KEY (fk_id_Produto) REFERENCES Produto (id_Produto);
  alter table Pedido add CONSTRAINT fk_id_Mesa FOREIGN KEY (fk_id_Mesa) REFERENCES MesaCliente (fk_id_Mesa);
  alter table Pedido add CONSTRAINT fk_id_Funcionario FOREIGN KEY (fk_id_Funcionario) REFERENCES Funcionario(id_Funcionario);
  