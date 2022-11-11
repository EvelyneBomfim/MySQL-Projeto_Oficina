# Desafio - Projeto Oficina

Criação de um banco de dados de uma oficina

Software: MySQL Workbench

## Modelagem conceitual

– Clientes
* Clientes levam veículos à oficina mêcanica para serem consertados ou para passarem por revisões periódicas.
* O cliente autoriza a execução dos serviços.

– Mecânico
* Cada veículo é designado a uma equipe de mecânicos que identifica os serviços a serem executados e preenche uma OS com data de entrega.
* A mesma equipe avalia e executa os serviços.
* Os mecânicos possuem código, nome, endereço e especialidade.

– Ordem de serviço
* Cada OS possui: n°, data de emissão, um valor, status e uma data para conclusão dos trabalhos.
* Uma OS pode ser composta por vários serviços e um mesmo serviço pode estar contido em mais de uma OS.
* Uma OS pode ter vários tipos de peça e uma peça pode estar presente em mais de uma OS.
* A partir da OS, calcula-se o valor de cada serviço, consultando-se uma tabela de referência de mão-de-obra.
* O valor de cada peça também irá compor a OS.
