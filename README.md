# Postgres-Queries

[<img src="https://wiki.postgresql.org/images/a/a4/PostgreSQL_logo.3colors.svg" align="right"  width="100">](https://www.postgresql.org/)

A list of useful queries to help you identify and efficiently manage your database activities in Postgres.



## Contents

- [Postgres-Queries](#Postgres-Queries)
    - [Users](#users)


### Users

* To list all the users in the current database

select usesysid as user_id,
       usename as username,
       usesuper as is_superuser,
       passwd as password_md5,
       valuntil as password_expiration
from pg_shadow
order by usename;
