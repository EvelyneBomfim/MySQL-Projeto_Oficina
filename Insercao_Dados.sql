-- Projeto OFICINA MECÂNICA - Desafio DIO

-- Inserção de dados do banco de dados da Oficina

use oficina;

-- Inserindo dados na tabela Conta
desc Conta;
insert into Conta(Nome, Telefone1, Telefone2, Email)
	values('Lucia Maria Carvalho', '31988996534', null, 'luciamc@gmail.com'),
		  ('André Luiz Pinheiro', '61997004514', '6138764533', 'andrel@hotmail.com'),
          ('TM Fretes', '3138334232', null, 'contato@tmfretes.com.br'),
          ('Carolina Silva Santos', '11998764832', null, 'carol2s@hotmail.com'),
          ('Preferido Papelaria', '1136748823', '1136748912', 'atendimento@preferidopapel.com.br'),
          ('Flash Dente', '1138987631', '1138987630', 'contato@flashdente.com.br'),
          ('Vitor Bruno Almeida', '31999876788', null, 'vitor@gmail.com'),
          ('Ana Aparecida Lima', '31988097866', null, 'analima@outlook.com'),
          ('Fernanda Silva Rodrigues', '11988987821', '11988094234', 'fernandasr11@gmail.com'),
          ('Canela Alimentos', '31998454454', null, 'contato@canela.com.br');

-- Inserindo dados na tabela Conta Juridica
desc Conta_juridica;
insert into Conta_juridica(CNPJ, Razao_social, idConta)
	values('88913173000141','TM Fretes ltda',3),
		  ('59328929000197','Preferido Papelaria ltda',5),
          ('67582531000100','Flash Dente ltda',6),
          ('08992637000113','Canela Alimentos ltda',10);
          
-- Inserindo dados na tabela Conta Física
desc Conta_fisica;
insert into Conta_fisica(Nome, CPF, Data_nascimento, idConta)
	values('Lucia Maria Carvalho','13987404035','2000-10-04',1),
		  ('André Luiz Pinheiro','09194639086','1998-06-19',2),
          ('Carolina Silva Santos','43456618034','1985-09-30',4),
          ('Vitor Bruno Almeida','99202574006','1990-11-09',7),
          ('Ana Aparecida Lima','40766334074','2001-02-22',8),
          ('Fernanda Silva Rodrigues','21612860052','1989-01-16',9);
          
-- Inserindo dados na tabela Conta Física
desc Veiculo;
insert into Veiculo(Placa,Chassi,Marca,Modelo,Ano_fabricacao,Ano_modelo,idConta)
	values('PNG9867','2JHP23V1EnZkS7772','Chevrolet','Onix','2014-10-01','2014-10-01',1),
		  ('HGV1765','3mALAg8FAtkhZ5343','Peugeot','C3','2008-06-01','2009-01-01',2),
          ('DCM7303','1te1A3baAA9T33780','Renault','Sandero','2020-06-01','2020-06-01',3),
          ('GRO4145','51g56FAk1FjwW1474','Volkswagen','Gol','2018-06-01','2019-01-01',4),
          ('FEN3898','6pGZHCAA5NEP78962','Volkswagen','Gol','2008-01-01','2008-06-01',5),
          ('EEB8149','8vw0J4E0DuwpA1377','Chevrolet','Prisma','2017-06-01','2017-06-01',6),
          ('BLC1587','691APAAktADLy3175','Volkswagen','Golf','2010-01-01','2011-01-01',7),
          ('HDH2300','7YN8lC779Ea996300','Honda','City','2020-06-01','2020-06-01',8),
          ('GZJ3767','7YN8lC779En996301','Hyundai','HB20','2019-01-01','2019-06-01',9),
          ('HCY7855','6ZAyEkM0NekAl5708','Volkswagen','Gol','2018-01-01','2018-06-01',10),
          ('KMC4507','4UgY8A07YbCfU6771','Hyundai','HB20','2010-01-01','2011-01-01',3),
          ('KLL4518','1422Krk8HjndP5276','Ford','KA','2020-01-01','2020-06-01',5),
          ('BJP4875','4f6hfj82A6AL16837','Ford','Focus','2019-06-01','2019-06-01',6),
          ('FBR8341','60jD7bLpe8WAT4103','Renault','Sandero','2018-06-01','2019-06-01',10),
          ('GCJ2678','8blbAzzHGB9667761','Volkswagen','Gol','2008-06-01','2009-01-01',3),
          ('CWQ2464','5jUP8NNNAGJ3g4120','Chevrolet','Onix','2015-06-01','2015-06-01',6);
          
-- Inserindo dados na tabela Mecânico
desc Equipe;
insert into Equipe(Especialidade,Mecanico_responsavel)
	values('Mecânico 1','Daniel Silva Fernandes'),
		  ('Mecânico 2','Julio Fernandes Andrade'),
          ('Mecânico 3','Pedro Paulo Freire'),
          ('Funilaria','Mario Almeida Rodrigues'),
          ('Pintura','Felipe Marcelo Andrade');


-- Inserindo dados na tabela Mecânico
desc Mecanico;
insert into Mecanico(Nome, CPF, Telefone, Email, Data_nascimento, Endereco, idEquipe)
	values('Paulo Lopes Silva','36254381001','1138987765','paulols@oficina.com.br','1987-10-03',null,1),
		  ('João Nascimento Santos','65865162004','1138753422','joaons@oficina.com.br','1983-09-01',null,2),
          ('Fernando Carvalho','15780110000','1138976877','fernandoc@oficina.com.br','1988-02-21',null,3),
          ('Alexandre Santos','78196361068','1139879001','alexandres@oficina.com.br','1979-08-04',null,4),
          ('Cleber Pereira','60079695094','1139764251','cleberp@oficina.com.br','1989-05-25',null,2),
          ('Roberto Andrade Lima','34940031063','1139887656','robertoal@oficina.com.br','1988-04-03',null,1),
          ('Claudio Rodrigues','24387397039','1139897809','claudior@oficina.com.br','2000-08-12',null,2),
          ('Juliano Silveira','16564037066','1139870901','julianos@oficina.com.br','1998-10-23',null,3),
          ('Osmar Cavalcante','43264381001','1139879843','osmarc@oficina.com.br','1986-04-07',null,4),
          ('Silvio Martins','38364929038','1139870123','silviom@oficina.com.br','1994-01-16',null,1),
          ('Tadeu Rodrigues','63602659070','1139876520','tadeur@oficina.com.br','1992-11-09',null,1),
          ('Alexandro Lima Santos','85255241075','1139870289','alexandrols@oficina.com.br','1996-12-06',null,1),
          ('Fernando Silva Martins','07373264093','1138985137','fernandosm@oficina.com.br','1993-06-05',null,2),
          ('Daniel Silva Fernandes','44619057053','1138910887','danielsf@oficina.com.br','1987-04-06',null,1),
          ('Julio Fernandes Andrade','73665997003','1139843822','juliofa@oficina.com.br','1997-02-15',null,2),
          ('Pedro Paulo Freire','34657122002','1138908712','pedropf@oficina.com.br','1990-07-17',null,3),
          ('Mario Almeida Rodrigues','65154482018','1139880213','marioar@oficina.com.br','1989-09-28',null,4),
          ('Felipe Marcelo Andrade','06825458051','1139810934','felipema@oficina.com.br','2001-03-28',null,5);

-- Inserindo dados na tabela Fornecedor
desc Fornecedor;
insert into Fornecedor(Razao_social,Nome_fantasia,Endereco,Telefone1,Email)
	values('Loja do Mecânico ltda','Loja do Mecânico','Rua Afonso Pena, n 230. Belo Horizonte-MG','3138457701','contato@lojamecanico.com.br'),
		  ('Hiper Varejo ltda','Hiper Varejo','Rua Dom Pedro I, n 14. Brasília-DF','61988210656','atendimento@hipervarejo.com.br'),
          ('Auto peças e ferramentas ltda','Auto peças e ferramentas','Rua Alagoas, n 20. Recife-PE','8138780978','vendas@autopf.com.br'),
          ('Mercado Automobilistico ltda','Mercado Auto','Rua Morais, n 12. São Paulo-SP','1138991234','vendedor@mercadoauto.com.br'),
          ('JP Automotivas ltda','JP Automotivas','Av. Juazeiro, n 81. Salvador-BA','7138719824','vendas@jpauto.com.br'),
          ('Parts Car ltda','Parts Car','Av. Cristovão Colombo, n 95. São Paulo-SP','11989765649','contato@partscar.com.br'),
          ('Carros AZ ltda','Carros AZ','Rua Pernambuco, n 6. Rio de Janeiro-RJ','2139879162','contato@carrosaz.com.br'),
          ('Peças Varejo e Atacado ltda','Peças VA','Rua Atlantida, n 74. Curitiba-PR','41998624102','vendas@pecasva.com.br');

-- Inserindo dados na tabela Peca
desc Peca;
insert into Peca(Referencia, Nome, Quantidade, Valor_unitario)
	values('AD98585699832','Amortecedor dianteiro',31,265.27),
		  ('AT19298473423','Amortecedor traseiro',32,250.11),
          ('FO35456778871','Filtro de óleo',182,20.32),
          ('FA04294843512','Filtro de ar',201,33.50),
          ('PFD0436179701','Pastilha de freio dianteiro',307,31.99),
          ('PFT8695310951','Pastilha de freio traseiro',310,39.99),
          ('RR73950492742','Radiador de resfriamento',8,210.00),
          ('RA93024264510','Radiador de água',9,560.00),
          ('BT74920048602','Bateria',28,400.00),
          ('VI20485729284','Velas de ignição',51,21.98),
          ('ST27485729506','Sensor de temperatura',12,40.00),
          ('CC92749275039','Caixa de câmbio',11,299.90),
          ('DF7689642543','Disco de freio',13,140.87);

-- Inserindo dados na tabela Orcamento
desc Orcamento;
insert into Orcamento(Status_orcamento, Data_emissao, Valor_orcamento, idConta, idVeiculo, idMecanico)
	values('Pendente','2022-11-03',null,10,14,2),
		  ('Aprovado','2022-11-01',null,6,16,4),
		  ('Aprovado','2022-11-02',null,10,10,1),
          ('Pendente','2022-11-01',null,6,6,3),
          ('Pendente','2022-10-31',null,3,11,5),
          ('Aprovado','2022-10-30',null,2,2,4),
          ('Aprovado','2022-11-04',null,3,3,9),
          ('Pendente','2022-11-01',null,10,14,8),
          ('Pendente','2022-10-30',null,10,3,7),
          ('Aprovado','2022-11-04',null,5,12,5),
          ('Pendente','2022-11-04',null,6,16,13),
          ('Aprovado','2022-11-04',null,9,9,15),
          ('Aprovado','2022-11-03',null,8,8,12),
          ('Pendente','2022-11-04',null,2,2,11),
          ('Aprovado','2022-11-01',null,1,1,18),
          ('Pendente','2022-11-01',null,7,7,5),
          ('Pendente','2022-11-04',null,4,4,17),
          ('Cancelado','2022-11-01',null,5,12,9),
          ('Aprovado','2022-11-04',null,10,14,8),
          ('Aprovado','2022-11-04',null,6,16,5),
          ('Cancelado','2022-10-31',null,3,11,4),
          ('Aprovado','2022-11-01',null,10,14,13),
          ('Aprovado','2022-11-04',null,2,2,14),
          ('Cancelado','2022-11-04',null,5,12,10);

-- Inserindo dados na tabela Ordem de Servico
desc OrdemServico;
insert into OrdemServico (Numero,Data_entrada,Data_entrega,Status_OS,
	Valor_Total,idConta,idVeiculo,idMecanico, idOrcamento)
	values(1000,'2022-11-03',null,'Concluída',119.99,6,16,4,2),
		  (1001,'2022-11-02',null,'Concluída',899.90,10,10,1,3),
          (1002,'2022-10-30',null,'Aguardando peça',null,2,2,4,6),
          (1003,'2022-11-04',null,default,null,3,3,9,7),
          (1004,'2022-11-04',null,default,null,5,12,5,10),
          (1005,'2022-11-04',null,default,null,9,9,15,12),
          (1006,'2022-11-03',null,'Aguardando peça',490.67,8,8,12,13),
          (1007,'2022-11-01',null,'Em execução',798.79,1,1,18,15),
          (1008,'2022-11-04',null,default,null,10,14,8,19),
          (1009,'2022-11-04',null,default,null,6,16,5,20),
          (1010,'2022-11-01',null,'Concluída',321.56,10,14,13,22),
          (1011,'2022-11-04',null,default,null,5,12,10,24);
          
-- Inserindo dados na tabela Fornecimento
desc Fornecimento;
insert into Fornecimento(idPeca, idFornecedor, quantidade)
	values(1,1,10),
		  (2,1,5),
          (3,1,15),
          (4,2,5),
          (4,5,5),
          (3,2,8),
          (6,2,10),
          (5,5,15),
          (9,8,2),
          (4,1,8);
    
-- Inserindo dados na tabela Orcamento_Peca
desc Orcamento_peca;
insert into Orcamento_peca(idOrcamento, idPeca, Quantidade)
	values(2,1,default),
		  (3,2,default),
          (6,3,default),
          (7,4,default),
          (10,5,2),
          (12,6,2),
          (13,9,default),
          (15,10,default),
          (19,5,2),
          (20,6,2),
          (22,2,default),
          (23,6,default);
    
-- Inserindo dados na tabela Mão de Obra
desc Mao_Obra;
insert into Mao_Obra(Servico,Descricao,Valor)
	values('Troca de óleo','Troca de óleo periódica',100.00),
		  ('Revisão simples','Revisão simples',250.00),
          ('Revisão completa','Revisão completa',400.00),
          ('Troca do filtro de ar','Troca do filtro de ar',99.98),
          ('Troca do filtro de água','Troca do filtro de água',99.98),
          ('Troca do filtro de combustível','Troca do filtro de combustível',110.00),
          ('Troca de bateria','Troca de bateria',50.00),
          ('Troca de amortecedor dianteiro','Troca de amortecedor dianteiro',150.00),
          ('Troca de amortecedor traseiro','Troca de amortecedor traseiro',200.00),
          ('Polimento','Polimento do veículo',200.00),
          ('Funilaria','Funilaria por peça',49.99),
          ('Pintura','Pintura por peça',89.90),
          ('Troca de tensor e correia dentada','Troca de tensor e correia dentada',300.97),
          ('Troca da pastilha de freio','Troca da pastilha de freio',99.97),
          ('Troca de pneus','Troca de um, dois ou quatro pneus',59.90),
          ('Alinhamento e balanceamento','Alinhamento e balanceamento',100.10),
          ('Higienização do ar condicionado','Higienização do ar condicionado',98.99),
          ('Lavagem completa','Lavagem completa',100.00),
          ('Diagnóstico com scanner','Diagnóstico com scanner',60.00);

-- Inserindo dados na tabela Serviços
desc Servico;
insert into Servico(idMaoObra, idOrcamento)
	values(2,1),
		  (2,2),
          (1,3),
          (2,4),
          (4,5),
          (1,6),
          (3,7),
          (2,10),
          (1,12),
          (3,13),
          (7,15),
          (5,19),
          (14,20),
          (19,22),
          (3,23),
          (18,13),
          (3,15),
          (8,19),
          (6,20),
          (10,22);