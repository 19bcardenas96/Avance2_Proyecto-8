DROP FUNCTION IF EXISTS fn_total_postulaciones;
DROP FUNCTION IF EXISTS fn_total_experiencias;

DELIMITER //

CREATE FUNCTION fn_total_postulaciones(
    p_id_egresado INT
)
RETURNS INT
DETERMINISTIC
BEGIN

    DECLARE total INT;

    SELECT COUNT(*)
    INTO total
    FROM postulaciones
    WHERE id_egresado = p_id_egresado;

    RETURN total;

END//

CREATE FUNCTION fn_total_experiencias(
    p_id_egresado INT
)
RETURNS INT
DETERMINISTIC
BEGIN

    DECLARE total INT;

    SELECT COUNT(*)
    INTO total
    FROM historial_laboral
    WHERE id_egresado = p_id_egresado;

    RETURN total;

END//

DELIMITER ;