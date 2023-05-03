#!/bin/bash
set -e

sed -i "s/\$DB_NAME/$DB_NAME/g" /etc/zabbix/zabbix_server.conf
sed -i "s/\$DB_USER/$DB_USER/g" /etc/zabbix/zabbix_server.conf
sed -i "s/\$DB_PASS/$DB_PASS/g" /etc/zabbix/zabbix_server.conf
sed -i "s/\$DB_PORT/$DB_PORT/g" /etc/zabbix/zabbix_server.conf