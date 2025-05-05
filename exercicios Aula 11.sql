use clinica_medica;

-- exibir todos os pacientes cadastradosno bd
select count(id) as "Total de pacientes" from pacientes;

desc medicos;
-- exibir as especialidades e emails dos medicos pediatras
select especialidade,count(id) as "Total de medicos da area" from medicos where especialidade = "pediatria";
-- exibir a quantidade de medicos por especialidade 
select especialidade,count(id) as "Quantidade" from medicos group by especialidade;

-- cadastrando um novo medico
insert into medicos(nome,especialidade,crm,telefone,email)
values ('Lara Calcagnoto','Obstetria','CRM 12365','(19) 97815-0999','Lara.calcagnoto@email.com');

-- cadastrando nova consulta para um medico
insert into agendamentos(paciente_id,medico_id,data_hora,
tipo_consulta,status)
values (1,6,"2025-05-05 10:00","Consulta de rotina","realizada"),
(3,6,"2025-05-05 07:00","Consulta de rotina","realizada");

desc pacientes;
-- exibir a quantidade de pacientes cadastrados na clinica
select count(id) as "Total de pacientes cadastrados" 
from pacientes;
-- exibir nome e idade dos pacientes
select nome,year(curdate()) - year(data_nacimento)
as "idade" from pacientes;
-- fazer a media de idades dos pacientes
select avg(year(curdate()) - year(data_nacimento))
as "idade" from pacientes;


desc agendamentos;
-- exibir a quantidade de agendamentos
select count(id) as "Total de agendamentos" from agendamentos;
-- quantidade de consultas por medico
select medicos.nome, count(agendamentos.id) from medicos 
left join agendamentos on medicos.id = agendamentos.medico_id
group by medicos.nome;
-- exibir o medico com mais consultas
select medicos.nome, count(agendamentos.id) as tot_consultas from medicos join
agendamentos on medicos.id = agendamentos.medico_id  and count(agendamentos.id) = max(count(agendamentos.id));

select * from agendamentos;
select * from medicos;



