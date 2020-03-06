#To list all the users in the current database.

SELECT usesysid AS user_id, 
       usename  AS username, 
       usesuper AS is_superuser, 
       passwd   AS password_md5, 
       valuntil AS password_expiration 
FROM   pg_shadow 
ORDER  BY usename; 
