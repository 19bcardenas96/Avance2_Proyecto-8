-- ROLES

CREATE ROLE IF NOT EXISTS administrador;
CREATE ROLE IF NOT EXISTS analista;
CREATE ROLE IF NOT EXISTS consulta;

-- USUARIOS

CREATE USER IF NOT EXISTS 'admin_bd'@'%' IDENTIFIED BY 'Admin123!';
CREATE USER IF NOT EXISTS 'analista_bd'@'%' IDENTIFIED BY 'Analista123!';
CREATE USER IF NOT EXISTS 'consulta_bd'@'%' IDENTIFIED BY 'Consulta123!';

-- PRIVILEGIOS

GRANT ALL PRIVILEGES
ON egresados_db.*
TO 'admin_bd'@'%';

GRANT SELECT, INSERT, UPDATE
ON egresados_db.*
TO 'analista_bd'@'%';

GRANT SELECT
ON egresados_db.*
TO 'consulta_bd'@'%';

FLUSH PRIVILEGES;


-- Parte de SHA2
SELECT SHA2('Admin123!',256) AS hash_password;

-- Parte de AES
SELECT AES_ENCRYPT(
'3105551001',
'llave_segura'
);

SELECT AES_DECRYPT(
AES_ENCRYPT(
'3105551001',
'llave_segura'
),
'llave_segura'
);