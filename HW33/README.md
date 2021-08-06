### HW31

# Screenshots and tasks list are required in your PR. Also please add query you used.

- Run postgresql db using docker. Install PGadmin or something else you like.

![Result](https://i.ibb.co/DV2xSZT/Screenshot-1.jpg)

- Learn base commands https://www.postgresqltutorial.com/postgresql-cheat-sheet/.

- Create hw33db database using query.

![Result](https://i.ibb.co/cvMyjZ0/Screenshot-3.jpg)

- Create a hw33 table using query. Table should have at minimum two different column data types. Also at least one column should have unique values.

![Result](https://i.ibb.co/9tBygd3/Screenshot-4.jpg)

- Fill your table with data using query.

![Result](https://i.ibb.co/p18z7TR/Screenshot-5.jpg)

- Modify your table values using query:
  - a) Add new column.

![Result](https://i.ibb.co/gPv4XTb/Screenshot-6a.jpg)

  - b) Update any value in first record.

![Result](https://i.ibb.co/Bgzfs93/Screenshot-6b.jpg)

  - c) Change column data type.

![Result](https://i.ibb.co/DfzSVYC/Screenshot-6c.jpg)

- Backup your hw33db using pg_dump tool(it should be part of your docker image).

![Result](https://i.ibb.co/PNLyks1/Screenshot-7.jpg)

- Delete hw33db db and restore it using psql.

![Result](https://i.ibb.co/WGFcZj0/Screenshot-8.jpg)

- Make a search in your DB using SELECT … FROM …. WHERE …

![Result](https://i.ibb.co/CsbfDBp/Screenshot-9.jpg)

- Create 2 users: hw33_1 and hw33_2. One of them should have RW access to your hw33db, another one should have only RO access. Test it.

![Result](https://i.ibb.co/jVCv7J1/Screenshot-10.jpg)
![Result](https://i.ibb.co/XCbghXW/Screenshot-10-1.jpg)

- How to drop connection to DB?

SELECT 
    pg_terminate_backend(pid) 
FROM 
    pg_stat_activity 
WHERE 
    -- don't kill my own connection!
    pid <> pg_backend_pid()
    -- don't kill the connections to other databases
    AND datname = 'database_name'
    ;

- Learn base parameters https://severalnines.com/database-blog/guide-postgresql-server-configuration-parameters.
- Play with pgadmin tool.(Create, lookup, drop ).

Optional:
Use ansible to do all tasks above.
