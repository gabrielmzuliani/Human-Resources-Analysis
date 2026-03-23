-- all table
SELECT *
FROM human_resources

-- number of rows
SELECT
	COUNT(*) AS row_number
FROM human_resources

-- confirm id's of roles
SELECT
	COUNT(DISTINCT id_cargo) AS id_role,
	COUNT(DISTINCT cargo) AS role
FROM human_resources

SELECT
	DISTINCT cargo,
	id_cargo
FROM human_resources
WHERE cargo IN(
	SELECT 
		role
	FROM (
		SELECT
			DISTINCT cargo AS role, 
			id_cargo AS id_role
		FROM human_resources) 
	GROUP BY role
	HAVING COUNT(*) > 1
	ORDER BY role
)
ORDER BY cargo

SELECT
	id_role,
	COUNT(*) AS count_id
FROM (
	SELECT
		DISTINCT id_cargo AS id_role,
		cargo AS role
	FROM human_resources
)
GROUP BY id_role
HAVING COUNT(*) > 1
ORDER BY id_role

-- confirm id's from termination cause
SELECT
	COUNT(DISTINCT id_causa_afastamento) AS id_cause,
	COUNT(DISTINCT causa_afastamento) AS cause
FROM human_resources

SELECT
	DISTINCT causa_afastamento,
	id_causa_afastamento
FROM human_resources
WHERE causa_afastamento IN(
	SELECT 
		cause
	FROM (
		SELECT
			DISTINCT causa_afastamento AS cause, 
			id_causa_afastamento AS id_cause
		FROM human_resources) 
	GROUP BY cause
	HAVING COUNT(*) > 1
	ORDER BY cause
)
ORDER BY causa_afastamento

SELECT
	id_cause,
	COUNT(*) count_id
FROM (
	SELECT
		DISTINCT id_causa_afastamento AS id_cause,
		causa_afastamento AS cause
	FROM human_resources
)
GROUP BY id_cause
HAVING COUNT(*) > 1
ORDER BY id_cause

-- confirme id's of employees
SELECT
	COUNT(DISTINCT id_funcionario) AS id_employee,
	COUNT(DISTINCT funcionario) AS employee
FROM human_resources

SELECT
	DISTINCT funcionario,
	id_funcionario
FROM human_resources
WHERE funcionario IN(
	SELECT 
		employee
	FROM (
		SELECT
			DISTINCT funcionario AS employee, 
			id_funcionario AS id_employee
		FROM human_resources) 
	GROUP BY employee
	HAVING COUNT(*) > 1
	ORDER BY employee
)
ORDER BY funcionario

SELECT
	id_employee,
	COUNT(*) count_id
FROM (
	SELECT
		DISTINCT id_funcionario AS id_employee,
		funcionario AS employee
	FROM human_resources
)
GROUP BY id_employee
HAVING COUNT(*) > 1
ORDER BY id_employee

-- Confirma features of employees
-- gender
SELECT
	DISTINCT sexo AS gender
FROM human_resources
ORDER BY gender

-- marital status
SELECT
	DISTINCT estado_civil AS marital_status
FROM human_resources
ORDER BY marital_status

-- education
SELECT
	DISTINCT escolaridade AS education
FROM human_resources
ORDER BY education

-- race
SELECT 
	DISTINCT raca AS race
FROM human_resources
ORDER BY race

-- nationality
SELECT
	DISTINCT nacionalidade AS nationality
FROM human_resources
ORDER BY nationality