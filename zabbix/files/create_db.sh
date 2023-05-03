#!/bin/bash
set -e

#!/bin/bash

# Check if the database exists
if sudo -u postgres psql -lqt | cut -d \| -f 1 | grep -qw zabbix; then
    echo "Database already exists"
else
    # Create the database
    
# Create database
    echo "Creating database..."
    sudo -u postgres createdb $DB_NAME
    echo "Database created"
fi


# Create role with password
echo "Creating role..."
sudo -u postgres psql -c "ALTER ROLE $DB_USER WITH SUPERUSER LOGIN PASSWORD '$DB_PASS';"

echo "Granting Permission on all public schemas.."
sudo -u postgres psql -c "GRANT ALL ON SCHEMA public TO $DB_USER;"


echo "Database and role created successfully!"