use loja;

delimiter $$
create procedure estoque()
begin
	select produto.nome, estoque.tamanho,
    estoque.cor, estoque.preco, estoque.quantidade
    from produto join estoque
    on produto.id = estoque.id_produto
    order by produto.nome;
end $$
delimiter ;

call estoque;

delimiter $$
create procedure produtoPorQuantidade(in qtde int)
begin
	select produto.nome as produto, estoque.tamanho,
    estoque.cor, estoque.preco, estoque.quantidade
    from produto join estoque
    on produto.id = estoque.id_produto
    where estoque.quantidade <= qtde
    order by produto.nome;
end $$
delimiter ;

call produtoPorQuantidade(6);


