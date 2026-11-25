USE hobbies_nm_db;
DELIMITER //

CREATE OR REPLACE f_get_hobby_id (p_hobby_name VARCHAR (128))
RETURNS INT 
READS SQL DATA 
BEGIN
	DECLARE v_hobby_id INT;
	SELECT MIN (h.hobby_id) INTO v_hobby_id
	FROM hobbies h
	WHERE h.hobby_name=p_hobby_name;
	
	RETURN v_hobby_id;
END//

DELIMITER;

SELECT f_get_hobby_id('Cine') AS cine, f_get_hobby_id('Ajedrez') AS ajedrez;

DELIMITER //

