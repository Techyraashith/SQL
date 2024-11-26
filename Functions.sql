-- NULL Functions --

SELECT IFNULL(NULL,76)
FROM dual;

SELECT NULLIF(3,6) AS nullif
FROM dual;

SELECT NULLIF(5,5) AS nullif
from dual;

SELECT COALESCE(null, 90, null, null,'hello', 76, 98) AS Coalesce
FROM dual;

-- Character Manupulation Functions --

-- SUBSTR() :

SELECT SUBSTR("Hey There!",4) AS Substring 
FROM dual;

SELECT SUBSTR("Hey There!",4,5) AS Substring 
FROM dual;

-- INSTR() :

SELECT INSTR("Hey There! Welcome","e") AS Inner_String
FROM dual;



