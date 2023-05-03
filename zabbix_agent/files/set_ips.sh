#!/bin/bash
set -e

sed -i "s/\$SERVER_IP/$SERVER_IP/g" /etc/zabbix/zabbix_agent.conf
sed -i "s/\$SERVER_ACTIVE/$SERVER_ACTIVE/g" /etc/zabbix/zabbix_agent.conf
