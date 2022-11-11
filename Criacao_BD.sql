-- Projeto OFICINA MECÂNICA - Desafio DIO

-- Criação de banco de dados da Oficina

create database oficina;
use oficina;

-- Criar tabela Conta
create table Conta(
	idConta int auto_increment primary key,
    Nome varchar(45) not null,
    Telefone1 char(11) not null,
    Telefone2 char(11),
    Email varchar(45) not null
);
alter table Conta auto_increment=1;

-- Criar tabela Conta jurídica
create table Conta_juridica(
	idJuridica int auto_increment primary key,
    CNPJ char(14) not null,
    Razao_social varchar(45) not null,
    idConta int,
    constraint unique_CNPJ_juridico unique(CNPJ),
    constraint fk_conta_juridico foreign key (idConta) references Conta(idConta)
);
alter table Conta_juridica auto_increment=1;

-- Criar tabela Conta física
create table Conta_fisica(
	idFisica int auto_increment primary key,
    Nome varchar(45) not null,
    CPF char(11) not null,
    Data_nascimento date not null,
    idConta int,
    constraint unique_CPF_fisica unique(CPF),
    constraint fk_conta_fisico foreign key (idConta) references Conta(idConta)
);
alter table Conta_fisica auto_increment=1;

-- Criar tabela Veículo
create table Veiculo(
	idVeiculo int auto_increment primary key,
    Placa char(7) not null,
    Chassi char(17) not null,
    Marca enum('Caoa Chery','Hyundai','Honda','Fiat','Renault','Volkswagen','Chevrolet','Ford','Toyota',
				'Kia','Nissan', 'Jeep', 'Peugeot','Citroen'),
	Modelo enum('Gol','Fox','CrossFox','Voyage','Golf','Jetta','Polo',
				'Uno','Palio','Siena','Fiesta','KA','Focus',
                'Civic','Fit','City','HB20','i30','Corolla','Etios',
                'Sandero','Kwid','Logan','Fluence','C3','207','308',
                'Celta','Corsa','Onix','Prisma'),
	Ano_fabricacao date not null,
    Ano_modelo date not null,
    idConta int,
    constraint unique_placa_fisica unique(Placa),
    constraint unique_chassi_fisica unique(Chassi),
    constraint fk_conta_veiculo foreign key (idConta) references Conta(idConta)
);

-- Criar tabela Fornecedor
create table Fornecedor(
	idFornecedor int auto_increment primary key,
    Razao_social varchar(45) not null,
    Nome_fantasia varchar(45),
    Endereco varchar(150),
    Telefone1 char(11) not null,
    Email varchar(45) not null
);

-- Criar tabela Peça
create table Peca(
	idPeca int auto_increment primary key,
    Referencia char(14) not null,
    Nome varchar(45) not null,
    Quantidade int default 0 not null,
    Valor_unitario float,
    constraint unique_referencia_peca unique(Referencia)
);

-- Criar tabela Mão de Obra (Tabela de preço dos serviços)
create table Mao_obra(
	idMaoObra int auto_increment primary key,
    Servico varchar(45) not null,
    Descricao varchar(100) not null,
    Valor float,
    constraint unique_referencia_peca unique(Servico)
);

-- Criar tabela Equipe
create table Equipe(
	idEquipe int auto_increment primary key,
    Especialidade enum('Mecânico 1','Mecânico 2','Mecânico 3','Funilaria','Pintura'),
    Mecanico_responsavel varchar(45)
);

-- Criar tabela Mecânico
create table Mecanico(
	idMecanico int auto_increment primary key,
    Nome varchar(45) not null,
    CPF char(11) not null,
    Telefone char(11) not null,
    Email varchar(45) not null,
    Data_nascimento date not null,
    Endereco varchar(150),
    idEquipe int,
    constraint unique_CPF_mecanico unique(CPF),
    constraint fk_equipe_mecanico foreign key (idEquipe) references Equipe(idEquipe)
);

-- Criar tabela Orcamento
create table Orcamento(
	idOrcamento int auto_increment primary key,
    Status_orcamento enum('Aprovado','Cancelado','Pendente') not null default 'Pendente',
    Data_emissao date not null,
    Valor_orcamento float,
    idConta int,
    idVeiculo int,
    idMecanico int,
    constraint fk_mecanico_orcamento foreign key (idMecanico) references Mecanico(idMecanico),
    constraint fk_conta_orcamento foreign key (idConta) references Conta(idConta),
    constraint fk_veiculo_orcamento foreign key (idVeiculo) references Veiculo(idVeiculo)
);
alter table Conta_fisica auto_increment=1;

-- Criar tabela Ordem de Serviço
create table OrdemServico(
	idOrdemServico int auto_increment primary key,
    Numero int not null,
    Data_entrada date not null,
    Data_entrega date,
    Status_OS enum('Aberta','Em execução','Concluída','Aguardando peça','Reaberta') not null default 'Aberta',
    Valor_total float,
    idConta int,
    idVeiculo int,
    idMecanico int,
    idOrcamento int,
    constraint unique_numero_OS unique(Numero),
    constraint fk_conta_OS foreign key (idConta) references Conta(idConta),
    constraint fk_veiculo_OS foreign key (idVeiculo) references Veiculo(idVeiculo),
    constraint fk_mecanico_OS foreign key (idMecanico) references Mecanico(idMecanico),
    constraint fk_orcamento_OS foreign key (idOrcamento) references Orcamento(idOrcamento)
);

-- Criar tabela Servicos (Mao_obra_orcamento)
create table Servico(
	idMaoObra int,
    idOrcamento int,
    constraint fk_maoobra_servico foreign key (idMaoObra) references Mao_Obra(idMaoObra),
    constraint fk_orcamento_servico foreign key (idOrcamento) references Orcamento(idOrcamento)
);

-- Criar tabela Fornecimento (Fornecedor_peça)
create table Fornecimento(
	idPeca int,
    idFornecedor int,
    quantidade int default 0,
    constraint fk_peca_fornecimento foreign key (idPeca) references Peca(idPeca),
    constraint fk_fornecedor_fornecimento foreign key (idFornecedor) references Fornecedor(idFornecedor)
);

-- Criar tabela Orçamento_Peça
create table Orcamento_Peca(
	idOrcamento int,
    idPeca int,
    quantidade int default 1,
    constraint fk_orcamento_peca foreign key (idOrcamento) references Orcamento(idOrcamento),
    constraint fk_peca_orcamento foreign key (idPeca) references Peca(idPeca)
);