create database TechFood;

CREATE TABLE Cliente (
  id_Cliente serial,
  nome_Cliente VARCHAR(100) NOT NULL,
  cpf_Cliente VARCHAR(11) NOT NULL,
  fone_Cliente VARCHAR(11) NOT NULL
  );

CREATE TABLE Funcionario (
  id_Funcionario serial,
  nome_Funcionario VARCHAR(100) NOT NULL,
  cpf_Funcionario VARCHAR(11) NOT NULL,
  cargo_Funcionario VARCHAR(45) NOT NULL,
  senha_Funcionario TEXT NOT NULL
  );

CREATE TABLE Mesa (
  id_Mesa INT NOT NULL,
  lugares_Mesa numeric(1) NOT NULL,
  ocupada_Mesa CHAR(1) NOT NULL,
  reserva_Mesa CHAR(1) NOT NULL
  );

CREATE TABLE Produto (
  id_Produto INT NOT NULL,
  nome_Produto VARCHAR(45) NOT NULL,
  preco_Produto FLOAT NOT NULL,
  observacoes VARCHAR(100) NULL
  );

CREATE TABLE MesaCliente (
  fk_id_Mesa INT NOT NULL,
  fk_id_Funcionario INT NOT NULL,
  fk_id_Cliente INT NOT NULL,
  hora_pedido TIME NOT NULL,
  total_consumido FLOAT NOT NULL,
  Pago CHAR(1) NOT NULL
  );

CREATE TABLE Pagamento (
  id_Pagamento INT NOT NULL,
  fk_id_Mesa INT NOT NULL,
  data_Pagamento DATE NOT NULL
)

CREATE TABLE Reserva (
  id_Reserva serial,
  fk_id_Mesa INT NOT NULL,
  fk_id_Cliente INT NOT NULL,
  data_Reserva DATE NOT NULL,
  hora_Reserva TIME NOT NULL
  );

CREATE TABLE Pedido(
  id_Pedido serial,
  fk_id_Produto INT NOT NULL,
  fk_id_Mesa INT NOT NULL,
  fk_id_Funcionario INT NOT NULL,
  fk_id_Cliente INT NOT NULL,
  quant_Pedido numeric(2) NOT NULL,
  observacoes VARCHAR(100) NULL
  );

CREATE TABLE Endereco (
  fk_id_Funcionario INT NOT NULL,
  ende_rua VARCHAR(45) NOT NULL,
  ende_cidade VARCHAR(45) NOT NULL,
  ende_cep VARCHAR(8) NOT NULL,
  ende_fone VARCHAR(11) NOT NULL
  );

  alter table Cliente add PRIMARY KEY (id_Cliente);

  alter table Funcionario add PRIMARY KEY (id_Funcionario);

  alter table Mesa add PRIMARY KEY (id_Mesa);

  alter table Produto add PRIMARY KEY (id_Produto);

  alter table MesaCliente add  PRIMARY KEY (fk_id_Mesa);
  
  alter table Pagamento add PRIMARY KEY (id_Pagamento);

  alter table Reserva add PRIMARY KEY (id_Reserva);

  alter table Pedido add PRIMARY KEY (id_Pedido);

  alter table Endereco add PRIMARY KEY (fk_id_Funcionario);

  alter table MesaCliente add CONSTRAINT fk_id_Mesa FOREIGN KEY (fk_id_Mesa) REFERENCES Mesa (id_Mesa);
  alter table MesaCliente add CONSTRAINT fk_id_Funcionario FOREIGN KEY (fk_id_Funcionario) REFERENCES Funcionario (id_Funcionario);
  alter table MesaCliente add CONSTRAINT fk_id_Cliente FOREIGN KEY (fk_id_Cliente) REFERENCES Cliente (id_Cliente);

  alter table Pagamento add CONSTRAINT fk_id_Mesa FOREIGN KEY (fk_id_Mesa) REFERENCES MesaCliente(fk_id_Mesa);
  
  alter table Reserva add CONSTRAINT fk_id_Mesa FOREIGN KEY (fk_id_Mesa) REFERENCES Mesa(id_Mesa);
  alter table Reserva add CONSTRAINT fk_id_Cliente FOREIGN KEY (fk_id_Cliente) REFERENCES Cliente (id_Cliente);  
  
  alter table Pedido add CONSTRAINT fk_id_Produto FOREIGN KEY (fk_id_Produto) REFERENCES Produto (id_Produto);
  alter table Pedido add CONSTRAINT fk_id_Mesa FOREIGN KEY (fk_id_Mesa) REFERENCES MesaCliente (fk_id_Mesa);
  alter table Pedido add CONSTRAINT fk_id_Funcionario FOREIGN KEY (fk_id_Funcionario) REFERENCES Funcionario(id_Funcionario);
  alter table Pedido add CONSTRAINT fk_id_Cliente FOREIGN KEY (fk_id_Cliente) REFERENCES Cliente (id_Cliente);
  
  alter table Endereco add CONSTRAINT fk_id_Funcionario FOREIGN KEY (fk_id_Funcionario) REFERENCES Funcionario (id_Funcionario);