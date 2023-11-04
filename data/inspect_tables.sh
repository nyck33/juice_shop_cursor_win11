#!/bin/bash

# Set variables
DB_HOST="localhost"
DB_USER="postgres"
DB_NAME="juiceshop_db"
DB_PASSWORD="password123!"
OUTPUT_DIR="db_inspection"

# Ensure directory exists
mkdir -p $OUTPUT_DIR
chmod 755 $OUTPUT_DIR

# Describe each table
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d Addresses' > $OUTPUT_DIR/Addresses_structure.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d BasketItems' > $OUTPUT_DIR/BasketItems_structure.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d Baskets' > $OUTPUT_DIR/Baskets_structure.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d Captchas' > $OUTPUT_DIR/Captchas_structure.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d Cards' > $OUTPUT_DIR/Cards_structure.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d Challenges' > $OUTPUT_DIR/Challenges_structure.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d Complaints' > $OUTPUT_DIR/Complaints_structure.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d Deliveries' > $OUTPUT_DIR/Deliveries_structure.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d Feedbacks' > $OUTPUT_DIR/Feedbacks_structure.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d ImageCaptchas' > $OUTPUT_DIR/ImageCaptchas_structure.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d Memories' > $OUTPUT_DIR/Memories_structure.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d PrivacyRequests' > $OUTPUT_DIR/PrivacyRequests_structure.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d Products' > $OUTPUT_DIR/Products_structure.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d Quantities' > $OUTPUT_DIR/Quantities_structure.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d Recycles' > $OUTPUT_DIR/Recycles_structure.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d SecurityAnswers' > $OUTPUT_DIR/SecurityAnswers_structure.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d SecurityQuestions' > $OUTPUT_DIR/SecurityQuestions_structure.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d Users' > $OUTPUT_DIR/Users_structure.txt
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c '\d Wallets' > $OUTPUT_DIR/Wallets_structure.txt
