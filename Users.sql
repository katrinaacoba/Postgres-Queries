#To list all the users in the current database.

SELECT usesysid AS user_id, 
       usename  AS username, 
       usesuper AS is_superuser, 
       passwd   AS password_md5, 
       valuntil AS password_expiration 
FROM   pg_shadow 
ORDER  BY usename; 

#To check and list the superusers in the current database.

SELECT u.usename AS "Role name",
  CASE WHEN u.usesuper AND u.usecreatedb THEN CAST('superuser, create
database' AS pg_catalog.text)
       WHEN u.usesuper THEN CAST('superuser' AS pg_catalog.text)
       WHEN u.usecreatedb THEN CAST('create database' AS
pg_catalog.text)
       ELSE CAST('' AS pg_catalog.text)
  END AS "Attributes"
FROM pg_catalog.pg_user u
ORDER BY 1;
