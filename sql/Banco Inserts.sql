-- Funcionario 
insert into Cliente (nome_Funcionario, cpf_Funcionario, cargo_funcionario, senha_funcionario) 
values ('João Ferreira', '22222222222', 'Funcionario', '123'), ('Rafael Borduchi',  '54321098765', 'Gerente', '321');

-- Mesa
insert into Mesa (lugares_Mesa, ocupada_Mesa, reserva_Mesa)
values (4, 'S', 'N'), (2, 'N', 'S');

-- Produto
insert into Produto (nome_Produto, preco_Produto, observacoes)
values ('Pizza 4 Queijos', 25.00, 'Queijo Mussarela, Gorgonzola, Parmesão, Requeijão Caseiro'), ('Coca-Cola Lata', 3.50, );

-- MesaCliente
insert into MesaCliente (fk_id_Mesa, fk_id_Reserva, hora_pedido, total_consumido, Pago)
values (1,1, '19:30', 25.00, 'S'), (2,2, '21:00', 'N');

-- Pagamento
insert into Pagamento (id_Pagamento, fk_id_Mesa)
values (001, 1, '2017-11-07'), (002, 2, '2017-12-07');

-- Reserva
insert into Reserva (fk_id_Mesa, nome_Cliente, data_Reserva, hora_Reserva)
values (1,'Filipi Jandozo', '2017-11-07'), (2,'João Ferreira', '2017-12-07');

-- Pedido
insert into Pedido (fk_id_Produto, fk_id_Mesa, fk_id_Funcionario, quant_Pedido, observacoes)
values (1, 1, 1, 2, 'Sem mussarela'), (1,2,2,1, 'Sem requeijão');

-- Endereco
insert into Endereco (fk_id_Funcionario,ende_rua, ende_cidade, ende_cep, ende_fone)
values (1, 'Abobrinha', 'Londrina', '11111111', '43123456789'), (2, 'Marechal Deodoro', 'Londrina', '11111111', '43333333333');