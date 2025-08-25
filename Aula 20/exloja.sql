use loja;

create table cliente(
	id int auto_increment primary key,
    nome varchar(100) not null,
    email varchar(100) unique,
    telefone varchar(20)
);

INSERT INTO cliente (nome, email, telefone) 
VALUES 
('Carlos Silva', 'carlos.silva@email.com', '(11) 98765-4321'), 
('Ana Pereira', 'ana.pereira@email.com', '(11) 99876-5432'), 
('Beatriz Costa', 'beatriz.costa@email.com', '(11) 97654-3210'), 
('João Mendes', 'joao.mendes@email.com', '(11) 96543-2109'), 
('Fernanda Lima', 'fernanda.lima@email.com', '(11) 95432-1098'), 
('Lucas Martins', 'lucas.martins@email.com', '(11) 94321-0987'), 
('Juliana Almeida', 'juliana.almeida@email.com', '(11) 93210-9876'), 
('Ricardo Souza', 'ricardo.souza@email.com', '(11) 92109-8765'), 
('Daniela Rocha', 'daniela.rocha@email.com', '(11) 91098-7654'), 
('Mariana Santos', 'mariana.santos@email.com', '(11) 90987-6543');

alter table pedido add column id_cliente int;

UPDATE pedido
JOIN cliente ON pedido.cliente_nome = cliente.nome
SET pedido.id_cliente = cliente.id;

