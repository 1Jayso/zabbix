#!/bin/bash
set -e

# Create database
echo "Creating database..."
sudo -u postgres createdb $DB_NAME

# Create role with password
echo "Creating role..."
sudo -u postgres psql -c "CREATE ROLE $DB_USER WITH LOGIN PASSWORD '$DB_PASS';"

# Grant permissions to role on database
echo "Granting permissions..."
sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE $DB_NAME TO $DB_USER;"

echo "Database and role created successfully!"
