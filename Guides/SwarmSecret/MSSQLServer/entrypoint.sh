#!/bin/bash

#Kalau ada command yang gagal, script langsung berhenti.
set -e

SECRET_FILE="/run/secrets/mssql_sa_password"

if [ ! -f "$SECRET_FILE" ]; then
    echo "ERROR: SQL Server password secret not found."
    exit 1
fi

export MSSQL_SA_PASSWORD="$(cat "$SECRET_FILE")"

exec /opt/mssql/bin/sqlservr