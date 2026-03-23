-- fixing the issue with the tables
-- fix the problem with the duplicated id's
WITH non_duplicated_id_roles AS (
	SELECT
		CASE 
			WHEN id_cargo = 79 AND cargo LIKE 'PLANIFICADOR DE DEMANDA' 
				THEN (SELECT MAX(id_cargo::numeric) FROM human_resources) + 1
			WHEN id_cargo = 107 AND cargo LIKE 'AJUDANTE EM GERAL' 
				THEN (SELECT MAX(id_cargo::numeric) FROM human_resources) + 2
			WHEN id_cargo = 107 AND cargo LIKE 'OPERADOR DE PONTE ROLANTE' 
				THEN (SELECT MAX(id_cargo::numeric) FROM human_resources) + 3
			ELSE id_cargo 
		END AS id,
		cargo,
		department
	FROM human_resources
	GROUP BY id_cargo, cargo, department
)

-- confirm if the id count is equal to role count (1 - 1)
SELECT
	COUNT(id),
	COUNT(cargo) AS role
FROM non_duplicated_id_roles

-- return all duplicated roles with the id's 
SELECT
	DISTINCT cargo,
	id
FROM non_duplicated_id_roles
WHERE cargo IN(
	SELECT 
		role
	FROM (
		SELECT
			DISTINCT cargo AS role, 
			id AS id_role
		FROM non_duplicated_id_roles) 
	GROUP BY role
	HAVING COUNT(*) > 1
	ORDER BY role
)
ORDER BY cargo

-- test version of duplicated roles solution
SELECT
	cargo AS role,
	MIN(id)
FROM non_duplicated_id_roles
GROUP BY cargo
ORDER BY cargo

-- test version of duplicated termination causes solution
SELECT
	DISTINCT causa_afastamento,
	id_causa_afastamento,
	MIN(id_causa_afastamento) OVER(PARTITION BY causa_afastamento) 
FROM human_resources
ORDER BY causa_afastamento


-- return the human_resources table with all issues above fixed
CREATE TABLE human_resource_n AS

SELECT
	id_funcionario,
	funcionario,
	sexo,
	data_admissao,
	MIN(id_role) OVER(PARTITION BY cargo) AS id_cargo, -- fix the issues with duplicated roles
	cargo,
	id_estado_civil,
	estado_civil,
	id_escolaridade,
	escolaridade,
	data_nascimento,
	id_nacionalidade,
	nacionalidade,
	id_raca,
	raca,
	data_afastamento,
	MIN(id_termination_cause) OVER(PARTITION BY causa_afastamento) AS id_causa_afastamento, -- fix the issues with duplicated termination causes
	causa_afastamento,
	department
FROM (
	SELECT 
		*,
		CASE 
			WHEN id_cargo = 79 AND cargo LIKE 'PLANIFICADOR DE DEMANDA' 
				THEN (SELECT MAX(id_cargo::numeric) FROM human_resources) + 1
			WHEN id_cargo = 107 AND cargo LIKE 'AJUDANTE EM GERAL' 
				THEN (SELECT MAX(id_cargo::numeric) FROM human_resources) + 2
			WHEN id_cargo = 107 AND cargo LIKE 'OPERADOR DE PONTE ROLANTE' 
				THEN (SELECT MAX(id_cargo::numeric) FROM human_resources) + 3
			ELSE id_cargo 
		END AS id_role, -- fix the issue with duplicated id's
		CASE
			WHEN id_causa_afastamento = '0' 
				THEN NULL
			ELSE id_causa_afastamento 
		END AS id_termination_cause -- fix the issue with id's equal zero
	FROM human_resources
)