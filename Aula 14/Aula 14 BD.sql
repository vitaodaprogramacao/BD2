use loja;

select * from categoria;
select * from marca;
select * from produto;
select * from estoque;
/*exercicio 1*/
insert into categoria (nome) values ('sapatenis');

INSERT INTO produto (nome, id_categoria, id_marca, descricao) VALUES
('Sapatênis Casual Puma', 5, 3, 'confortavel e estiloso');

INSERT INTO estoque (id_produto, tamanho, cor, preco, quantidade) VALUES
(11, 40, 'cinza', 219.90, 6),
(11, 41, 'preto', 219.90, 4);

/*exercicio 2*/
update produto set descricao = 'Tênis confortável com design moderno e amortecimento Air.' where id=1;

/*exercicio 3-A*/
select * from estoque order by id_produto;

/*exercicio 3-B*/
select * from estoque;

/*exercicio 3-C*/
select * from estoque where quantidade < 10;

/*exercicio 4-A*/
select produto.nome, categoria.nome, marca.nome, estoque.preco from produto 
join categoria on produto.id_categoria = categoria.id 
join marca on produto.id_marca = marca.id
join estoque on produto.id = estoque.id_produto;

/*exercicio 4-B*/
select produto.nome, estoque.cor, estoque.tamanho, estoque.quantidade from estoque 
join produto on estoque.id_produto = produto.id;

/*exercicio 5-A*/
select sum(quantidade) as 'total de pares disponiveis em estoque'from estoque;

/*exercicio 5-B*/
select produto.nome, sum(estoque.quantidade) as 'total de pares' from estoque
join produto on estoque.id_produto = produto.id
group by produto.nome;

/*exercicio 5-C*/
select produto.nome, sum(estoque.quantidade * estoque.preco) as 'Valor_total'
from estoque join produto on estoque.id_produto = produto.id
group by produto.nome;

/*exercicio 5-D*/
select categoria.nome, avg(estoque.preco) as 'Media de preços' from produto
join categoria on produto.id_categoria = categoria.id
join estoque on produto.id = estoque.id_produto
group by categoria.nome;





