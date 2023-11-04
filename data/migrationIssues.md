```bash
docker run --name postgres -e POSTGRES_PASSWORD=password123! -p 5432:5432 -d postgres

docker exec -it postgres /bin/bash

sqlite3 juiceshop.sqlite .dump > juiceshop.sql

# get in and see database
docker exec -it postgres psql -U postgres -d juiceshop_db
\d Users 
\dt # all tables
select * from Addresses limit 10;

# drop tables or just one with CASCADE
DROP TABLE "Addresses", "BasketItems", "Baskets", "Captchas", "Cards", "Challenges", "Complaints", "Deliveries", "Feedbacks", "ImageCaptchas", "Memories", "PrivacyRequests", "Products", "Quantities", "Recycles", "SecurityAnswers", "SecurityQuestions", "Users", "Wallets" CASCADE;

# make new sqlite from edited .sql
sqlite3 new_js.sqlite < juiceshop.sql

# run ruby command
sequel -C sqlite:///media/nyck33/1TB-backup/cybersec/owaspZap/juice_shop_cursor_win11/data/new_js.sqlite postgres://postgres:password123\!@localhost/juiceshop_db

# connect to it
PGPASSWORD=password123! psql -h localhost -U postgres -d juiceshop_db

# get ip address, for connecting app docker to postgres docker
docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' container_name_or_id


```
Certainly! Let's go step by step:

### 1. List all tables:

Connect to the database using `psql`:

```bash
PGPASSWORD=password123! psql -h localhost -U postgres -d juiceshop_db
```

Once connected, list all tables:

```sql
\d
```

You should expect to see tables like `address`, `basket`, `user`, etc.

### 2. Inspect each table:

For the `address` table:

```sql
\d address
```

For the `basket` table:

```sql
\d basket
```

For the `user` table:

```sql
\d user
```

... and so on for each table.

### 3. Verify Foreign Key Constraints:

For the `address` table's foreign key to `user`:

```sql
SELECT conname, a.attname AS "Column", pg_catalog.pg_get_constraintdef(con.oid, true) as "ForeignKey"
FROM pg_catalog.pg_constraint con
INNER JOIN pg_catalog.pg_class rel ON rel.oid = con.conrelid
INNER JOIN pg_catalog.pg_namespace nsp ON nsp.oid = connamespace
INNER JOIN pg_catalog.pg_attribute a ON a.attnum = ANY(con.conkey)
WHERE con.contype = 'f' 
AND rel.relname = 'address';
```

For the `basket` table's foreign key to `user`:

```sql
SELECT conname, a.attname AS "Column", pg_catalog.pg_get_constraintdef(con.oid, true) as "ForeignKey"
FROM pg_catalog.pg_constraint con
INNER JOIN pg_catalog.pg_class rel ON rel.oid = con.conrelid
INNER JOIN pg_catalog.pg_namespace nsp ON nsp.oid = connamespace
INNER JOIN pg_catalog.pg_attribute a ON a.attnum = ANY(con.conkey)
WHERE con.contype = 'f' 
AND rel.relname = 'basket';
```

... and so on for each table.

### 4. Verify Data Integrity (Optional):

For the `address` table's `UserId`:

```sql
SELECT * FROM address WHERE UserId IS NOT NULL AND UserId NOT IN (SELECT id FROM user);
```

For any rows in the `basket` table with a `UserId` that doesn't exist in the `user` table:

```sql
SELECT * FROM basket WHERE UserId IS NOT NULL AND UserId NOT IN (SELECT id FROM user);
```

... and similar queries for other relationships.

### 5. Exit the psql prompt:

```sql
\q
```

You can follow these steps to verify the integrity and relationships of your tables. If any of the checks indicate an issue, it will provide a clue as to what might be causing the problems in your application.
