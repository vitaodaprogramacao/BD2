use clinica_medica;

SELECT pacientes.nomes, SUM (medicamentos.preco) as "Gasto com Medicamentos"
FROM pacientes JOIN historicomedico 
ON pacientes.id = historicomedicos.paciente.id JOIN prescricoes 
ON historicomedico.id = prescricoes.historico_medico_id JOIN medicamentos
ON medicamentos.id = prescricoes.medicamentos_id
GROUP BY pacientes.nome;


-- MOSTRAR OS PRESCRICOES POR PACIENTE 
SELECT pacientes.nome, COUNT(prescricoes.id)
FROM pacientes JOIN  historicomedico.paciente_id JOIN  prescricoes 
ON historicomedico.id = prescricoes.historico_medico_id
GROUP BY  pacientes.nome;

-- MOSTRAR OS MEDICAMENTOS DE CADA PRESCRIÇAO
SELECT prescricoes.id "Prescrição", medicamento.nome "Medicamento"
FROM prescricoes, JOIN medicamentos
ON prescricoes.medicamento_id = medicamentos.id;