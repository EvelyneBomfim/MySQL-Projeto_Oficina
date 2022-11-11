-- Projeto OFICINA MECÂNICA - Desafio DIO

use oficina;

-- Consultas e atualizações

-- Quais os clientes com orçamento pendente
select o.idOrcamento,o.Status_orcamento, o.Data_emissao, o.Valor_orcamento, c.Nome, v.Placa, v.Marca, v.Modelo
	from Orcamento o inner join Conta c on c.idConta=o.idConta
	inner join Veiculo v on o.idVeiculo=v.idVeiculo
	where o.Status_orcamento='Pendente';
    
-- Valor do orçamento
select o.idOrcamento, p.idPeca, p.Nome, op.Quantidade, p.Valor_unitario as 'Preço unitário',
	round((op.quantidade * p.Valor_unitario),2) as 'Valor total'
	from Orcamento_peca op inner join Peca p on op.idPeca=p.idPeca
	inner join orcamento o on o.idOrcamento=op.idOrcamento;

-- Inserindo o valor total no Orçamento
update Orcamento o
	inner join Orcamento_peca op on op.idOrcamento=o.idOrcamento
    inner join Peca p on op.idPeca=p.idPeca
    set o.Valor_orcamento = (round((op.Quantidade * p.Valor_unitario),2));
select * from Orcamento;

-- Atualizando o valor da OS de acordo com o orçamento
update OrdemServico os
	inner join Orcamento o on o.idOrcamento=os.idOrcamento
    set os.Valor_total=o.Valor_orcamento
    where o.Status_orcamento='Aprovado';
select * from OrdemServico;

-- Quantidade de mecânicos por equipe
select m.idEquipe, e.Especialidade, count(m.idEquipe) as 'Quantidade de funcionários'
	from Mecanico m inner join Equipe e 
    on m.idEquipe = e.idEquipe
    group by m.idEquipe;
    
-- Quais equipes tem mais orçamentos?
select e.Especialidade, count(e.idEquipe) as 'Quantidade de orçamentos'
	from Orcamento o
	inner join Mecanico m on m.idMecanico=o.idMecanico
    inner join Equipe e on m.idEquipe=e.idEquipe
    group by e.idEquipe;

-- Quais equipes tem mais Ordem de Serviços?
select e.Especialidade, count(e.idEquipe) as 'Quantidade de orçamentos'
	from OrdemServico os
	inner join Mecanico m on m.idMecanico=os.idMecanico
    inner join Equipe e on m.idEquipe=e.idEquipe
    group by e.idEquipe
    order by e.idEquipe;

-- Quais clientes possuem veículos fabricados a partir de 2020
select c.Nome, v.Placa, v.Marca, v.Modelo, v.Ano_fabricacao, v.Ano_modelo
	from Veiculo v inner join Conta c on v.idConta=c.idConta
    group by v.idVeiculo
	having year(ano_fabricacao)>='2020';
    
-- Quais peças mais usadas
select p.idPeca, p.Referencia, p.Nome, p.Valor_unitario,
	sum(op.quantidade) as 'Total de peças vendidas',
    round((sum(op.quantidade))*p.Valor_unitario,2) as 'Valor total vendido'
    from Peca p
	inner join Orcamento_peca op on p.idPeca=op.idPeca
    group by op.idPeca
    order by p.idPeca;