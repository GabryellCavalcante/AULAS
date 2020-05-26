--1-      Buscar o nome e telefone de todos os clientes que possuam telefone

select 
    c.nome,
    c.telefone
from cliente c
where c.telefone is not null;

--2-      Buscar o nome e sexo de todos os cliente que não possuam telefone ordenados por nome

select 
    c.nome,
    c.sexo
from cliente c
where c.telefone is null
order by c.nome asc;

--3-      Buscar o nome e sexo de todos os clientes, ordenar por sexo em ordem crescente e por nome em ordem decrescente

select 
    c.nome,
    c.sexo
from cliente c
order by c.sexo asc, c.nome desc;

4-      Buscar o nome e o valor do produto onde o nome comece com a letra “C”

select 
	p.nome, 
	p.valor
from produto p
where p.nome like 'C%';

--5-      Buscar o nome e a quantidade do produto onde o nome termine com a letra “a” e que contenha a letra “o” ordenados por quantidade em ordem decrescente

select 
	p.nome, 
	p.quantidade_estoque
from produto p
where p.nome like '%a'
and p.nome like '%o%'
order by p.quantidade_estoque desc;

---      Buscar o nome e a quantidade do produto em que a quantidade em estoque esteja entre 10 e 40

select 
	p.nome, 
	p.quantidade_estoque
from produto p
where p.quantidade_estoque between 10 and 40;

--7-      Buscar o nome, a quantidade e o valor dos produtos que possuam a quantidade em estoque de 25, 38 ou 46

select 
	p.nome, 
	p.quantidade_estoque, 
	p.valor
from produto p
where p.quantidade_estoque in ('25','38','46');

--8-      Buscar o nome, a quantidade e o valor dos produtos que possuam a quantidade em estoque entre 10 e 20 ou o valor entre 20 e 30

select 
	p.nome, 
	p.quantidade_estoque, 
	p.valor
from produto p
where p.quantidade_estoque between 10 and 20
or p.valor between 20 and 30;

--9-      Buscar o nome dos clientes que realizaram alguma compra (Desconsiderar nomes repetidos)

select distinct 
	c.nome
from cliente c 
inner join compra o
on c.id = o.id_cliente;

--10-   Buscar o nome dos clientes que compraram o produto com id 2

select 
	nome
from cliente c
inner join compra o
on c.id = o.id_cliente
where o.id_produto = '2';

--11-   Buscar o nome dos clientes que compraram o produto ‘Caderno’

select 
	c.nome
from cliente c
inner join compra o
on c.id = o.id_cliente
inner join produto p
on p.id = o.id_produto
where p.nome = 'caderno';

--12-   Buscar o nome do cliente e o nome do produto cujo o valor do produto comprado seja maior que 5

select 
	c.nome,
	p.nome
from cliente c
inner join compra o
on c.id = o.id_cliente
inner join produto p
on p.id = o.id_produto
where p.valor > '5';

--13-   Buscar nome do cliente, telefone do cliente e nome do produto comprado onde o cliente possui telefone*/

select 
	c.nome,
	c.telefone,
	p.nome
from cliente c
inner join compra o
on c.id = o.id_cliente
inner join produto p
on p.id = o.id_produto
where c.telefone is not null;

--14-   Buscar o nome dos produtos comprados por ‘Arthur’*/

select 
	p.nome
from cliente c
inner join compra o
on c.id = o.id_cliente
inner join produto p
on p.id = o.id_produto
where c.nome = 'Arthur';

--15-   Buscar o nome e o valor dos produtos comprados pelos clientes do sexo feminino*/

select 
	p.nome,
	p.valor
from produto p
inner join compra o
on p.id = o.id_produto
inner join cliente c
on c.id = o.id_cliente
where c.sexo = 'F';
