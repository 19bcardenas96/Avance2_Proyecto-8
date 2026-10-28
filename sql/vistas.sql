CREATE OR REPLACE VIEW vw_empleabilidad_programas AS
SELECT
    p.nombre AS programa,
    COUNT(e.id_egresado) AS total_egresados
FROM programas p
INNER JOIN egresados e
    ON p.id_programa = e.id_programa
GROUP BY p.nombre;

CREATE OR REPLACE VIEW vw_egresados_publico AS
SELECT
    id_egresado,
    nombre,
    CONCAT(
        LEFT(correo,3),
        '****@****'
    ) AS correo_protegido,
    telefono
FROM egresados;