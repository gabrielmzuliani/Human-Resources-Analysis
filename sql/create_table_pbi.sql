----------------------
-- dimension tables --
----------------------
-- roles
TRUNCATE TABLE events, roles CASCADE

INSERT INTO roles (id, cargo, department)

SELECT
	DISTINCT id_cargo 	AS id,
	cargo 				AS cargo,
	department
FROM human_resource_n

-- termination cause
TRUNCATE TABLE events, termination_causes CASCADE

INSERT INTO termination_causes (id, termination_cause)

SELECT
	DISTINCT id_causa_afastamento 	AS id,
	causa_afastamento 				AS termination_cause
FROM human_resource_n
WHERE id_causa_afastamento IS NOT NULL

-- employees
TRUNCATE TABLE events, employees CASCADE

INSERT INTO employees (id, name, gender, marital_status, education, birth_date, nationality, race)

SELECT
	DISTINCT id_funcionario AS id,
	funcionario 			AS name,
	sexo 					AS gender,
	estado_civil 			AS marital_status,
	escolaridade 			AS education,
	data_nascimento 		AS birth_date,
	nacionalidade 			AS nationality,
	raca 					AS race
FROM human_resource_n

-- events
TRUNCATE TABLE events

INSERT INTO events (id_employee, date, event_type, id_role, id_termination_cause)
SELECT
	id_funcionario 	AS id_employee,
	data_admissao 	AS date,
	'Hire' 			AS event_type,
	id_cargo 		AS id_role,
	NULL 			AS id_termination_cause
FROM human_resource_n
WHERE data_admissao IS NOT NULL

UNION ALL

SELECT
	id_funcionario 			AS id_employee,
	data_afastamento 		AS date,
	'Termination' 			AS event_type,
	id_cargo 				AS id_role,
	id_causa_afastamento 	AS id_termination_cause
FROM human_resource_n
WHERE data_afastamento IS NOT NULL