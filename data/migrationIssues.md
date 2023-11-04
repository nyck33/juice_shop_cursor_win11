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




```