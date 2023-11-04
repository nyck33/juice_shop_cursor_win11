#!/bin/bash

# Set variables
DB_HOST="localhost"
DB_USER="postgres"
DB_NAME="juiceshop_db"
DB_PASSWORD="password123!"
OUTPUT_DIR="db_inspection"

# Create the output directory if it doesn't exist
mkdir -p $OUTPUT_DIR

# Fetch the list of tables and save to a file
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c "\dt" > $OUTPUT_DIR/tables.txt

# Commands for each table
# Users
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d "Users"' > $OUTPUT_DIR/Users_structure.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c 'SELECT * FROM "Users" LIMIT 5;' > $OUTPUT_DIR/Users_data.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c 'SELECT COUNT(*) FROM "Users";' > $OUTPUT_DIR/Users_count.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\di+ "Users"' > $OUTPUT_DIR/Users_indexes.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d+ "Users"' > $OUTPUT_DIR/Users_constraints.txt

# Addresses
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d "Addresses"' > $OUTPUT_DIR/Addresses_structure.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c 'SELECT * FROM "Addresses" LIMIT 5;' > $OUTPUT_DIR/Addresses_data.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c 'SELECT COUNT(*) FROM "Addresses";' > $OUTPUT_DIR/Addresses_count.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\di+ "Addresses"' > $OUTPUT_DIR/Addresses_indexes.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d+ "Addresses"' > $OUTPUT_DIR/Addresses_constraints.txt

# Baskets
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d "Baskets"' > $OUTPUT_DIR/Baskets_structure.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c 'SELECT * FROM "Baskets" LIMIT 5;' > $OUTPUT_DIR/Baskets_data.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c 'SELECT COUNT(*) FROM "Baskets";' > $OUTPUT_DIR/Baskets_count.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\di+ "Baskets"' > $OUTPUT_DIR/Baskets_indexes.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d+ "Baskets"' > $OUTPUT_DIR/Baskets_constraints.txt

# BasketItems
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d "BasketItems"' > $OUTPUT_DIR/BasketItems_structure.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c 'SELECT * FROM "BasketItems" LIMIT 5;' > $OUTPUT_DIR/BasketItems_data.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c 'SELECT COUNT(*) FROM "BasketItems";' > $OUTPUT_DIR/BasketItems_count.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\di+ "BasketItems"' > $OUTPUT_DIR/BasketItems_indexes.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d+ "BasketItems"' > $OUTPUT_DIR/BasketItems_constraints.txt

# Cards
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d "Cards"' > $OUTPUT_DIR/Cards_structure.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c 'SELECT * FROM "Cards" LIMIT 5;' > $OUTPUT_DIR/Cards_data.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c 'SELECT COUNT(*) FROM "Cards";' > $OUTPUT_DIR/Cards_count.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\di+ "Cards"' > $OUTPUT_DIR/Cards_indexes.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d+ "Cards"' > $OUTPUT_DIR/Cards_constraints.txt

# Complaints
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d "Complaints"' > $OUTPUT_DIR/Complaints_structure.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c 'SELECT * FROM "Complaints" LIMIT 5;' > $OUTPUT_DIR/Complaints_data.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c 'SELECT COUNT(*) FROM "Complaints";' > $OUTPUT_DIR/Complaints_count.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\di+ "Complaints"' > $OUTPUT_DIR/Complaints_indexes.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d+ "Complaints"' > $OUTPUT_DIR/Complaints_constraints.txt

# ... Continue in this fashion for all tables.
# Feedbacks
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d "Feedbacks"' > $OUTPUT_DIR/Feedbacks_structure.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c 'SELECT * FROM "Feedbacks" LIMIT 5;' > $OUTPUT_DIR/Feedbacks_data.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c 'SELECT COUNT(*) FROM "Feedbacks";' > $OUTPUT_DIR/Feedbacks_count.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\di+ "Feedbacks"' > $OUTPUT_DIR/Feedbacks_indexes.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d+ "Feedbacks"' > $OUTPUT_DIR/Feedbacks_constraints.txt

# ImageCaptchas
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d "ImageCaptchas"' > $OUTPUT_DIR/ImageCaptchas_structure.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c 'SELECT * FROM "ImageCaptchas" LIMIT 5;' > $OUTPUT_DIR/ImageCaptchas_data.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c 'SELECT COUNT(*) FROM "ImageCaptchas";' > $OUTPUT_DIR/ImageCaptchas_count.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\di+ "ImageCaptchas"' > $OUTPUT_DIR/ImageCaptchas_indexes.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d+ "ImageCaptchas"' > $OUTPUT_DIR/ImageCaptchas_constraints.txt

# Memories
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d "Memories"' > $OUTPUT_DIR/Memories_structure.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c 'SELECT * FROM "Memories" LIMIT 5;' > $OUTPUT_DIR/Memories_data.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c 'SELECT COUNT(*) FROM "Memories";' > $OUTPUT_DIR/Memories_count.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\di+ "Memories"' > $OUTPUT_DIR/Memories_indexes.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d+ "Memories"' > $OUTPUT_DIR/Memories_constraints.txt

# PrivacyRequests
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d "PrivacyRequests"' > $OUTPUT_DIR/PrivacyRequests_structure.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c 'SELECT * FROM "PrivacyRequests" LIMIT 5;' > $OUTPUT_DIR/PrivacyRequests_data.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c 'SELECT COUNT(*) FROM "PrivacyRequests";' > $OUTPUT_DIR/PrivacyRequests_count.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\di+ "PrivacyRequests"' > $OUTPUT_DIR/PrivacyRequests_indexes.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d+ "PrivacyRequests"' > $OUTPUT_DIR/PrivacyRequests_constraints.txt

# Products
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d "Products"' > $OUTPUT_DIR/Products_structure.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c 'SELECT * FROM "Products" LIMIT 5;' > $OUTPUT_DIR/Products_data.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c 'SELECT COUNT(*) FROM "Products";' > $OUTPUT_DIR/Products_count.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\di+ "Products"' > $OUTPUT_DIR/Products_indexes.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d+ "Products"' > $OUTPUT_DIR/Products_constraints.txt

# Quantities
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d "Quantities"' > $OUTPUT_DIR/Quantities_structure.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c 'SELECT * FROM "Quantities" LIMIT 5;' > $OUTPUT_DIR/Quantities_data.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c 'SELECT COUNT(*) FROM "Quantities";' > $OUTPUT_DIR/Quantities_count.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\di+ "Quantities"' > $OUTPUT_DIR/Quantities_indexes.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d+ "Quantities"' > $OUTPUT_DIR/Quantities_constraints.txt

# Recycles
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d "Recycles"' > $OUTPUT_DIR/Recycles_structure.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c 'SELECT * FROM "Recycles" LIMIT 5;' > $OUTPUT_DIR/Recycles_data.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c 'SELECT COUNT(*) FROM "Recycles";' > $OUTPUT_DIR/Recycles_count.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\di+ "Recycles"' > $OUTPUT_DIR/Recycles_indexes.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d+ "Recycles"' > $OUTPUT_DIR/Recycles_constraints.txt

# Deliveries
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d "Deliveries"' > $OUTPUT_DIR/Deliveries_structure.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c 'SELECT * FROM "Deliveries" LIMIT 5;' > $OUTPUT_DIR/Deliveries_data.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c 'SELECT COUNT(*) FROM "Deliveries";' > $OUTPUT_DIR/Deliveries_count.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\di+ "Deliveries"' > $OUTPUT_DIR/Deliveries_indexes.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d+ "Deliveries"' > $OUTPUT_DIR/Deliveries_constraints.txt

# SecurityAnswers
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d "SecurityAnswers"' > $OUTPUT_DIR/SecurityAnswers_structure.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c 'SELECT * FROM "SecurityAnswers" LIMIT 5;' > $OUTPUT_DIR/SecurityAnswers_data.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c 'SELECT COUNT(*) FROM "SecurityAnswers";' > $OUTPUT_DIR/SecurityAnswers_count.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\di+ "SecurityAnswers"' > $OUTPUT_DIR/SecurityAnswers_indexes.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d+ "SecurityAnswers"' > $OUTPUT_DIR/SecurityAnswers_constraints.txt

# SecurityQuestions
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d "SecurityQuestions"' > $OUTPUT_DIR/SecurityQuestions_structure.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c 'SELECT * FROM "SecurityQuestions" LIMIT 5;' > $OUTPUT_DIR/SecurityQuestions_data.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c 'SELECT COUNT(*) FROM "SecurityQuestions";' > $OUTPUT_DIR/SecurityQuestions_count.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\di+ "SecurityQuestions"' > $OUTPUT_DIR/SecurityQuestions_indexes.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d+ "SecurityQuestions"' > $OUTPUT_DIR/SecurityQuestions_constraints.txt

# Wallets
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d "Wallets"' > $OUTPUT_DIR/Wallets_structure.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c 'SELECT * FROM "Wallets" LIMIT 5;' > $OUTPUT_DIR/Wallets_data.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c 'SELECT COUNT(*) FROM "Wallets";' > $OUTPUT_DIR/Wallets_count.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\di+ "Wallets"' > $OUTPUT_DIR/Wallets_indexes.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d+ "Wallets"' > $OUTPUT_DIR/Wallets_constraints.txt

echo "Database inspection completed. Check the db_inspection directory for output files."



echo "Database inspection completed. Check the $OUTPUT_DIR directory for output files."
