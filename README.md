# Postgres-Queries

[<img src="https://wiki.postgresql.org/images/a/a4/PostgreSQL_logo.3colors.svg" align="right"  width="100">](https://www.postgresql.org/)

A list of useful queries to help you identify and efficiently manage your database activities in Postgres.



## Contents

- [Postgres-Queries](#Postgres-Queries)
    - [Users](#users)


### Users

* To list all the users in the current database

SELECT usesysid AS user_id, 
       usename  AS username, 
       usesuper AS is_superuser, 
       passwd   AS password_md5, 
       valuntil AS password_expiration 
FROM   pg_shadow 
ORDER  BY usename; 
