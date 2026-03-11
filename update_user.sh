#!/bin/bash

RDS_HOST="database-1.cnq4imsospl6.ap-south-1.rds.amazonaws.com"
RDS_USER="admin"
RDS_PASS="admin1234"
DB_NAME="test"

echo "Connecting to RDS..."

mysql -h $RDS_HOST -u $RDS_USER -p$RDS_PASS $DB_NAME <<EOF

INSERT INTO USER (first_name,last_name,email,username,password,regdate)
VALUES ('Rabiya','Shendure','rabiya@gmail.com','rabiya123','pass123','2026-03-11');

SELECT * FROM USER;

EOF

echo "Data inserted successfully"
