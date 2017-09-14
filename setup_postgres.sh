#! /bin/bash

service postgresql start
sudo -u postgres psql -c "CREATE USER pick_an_otm_username ENCRYPTED PASSWORD 'pick_a_password'"
sudo -u postgres psql template1 -c "CREATE EXTENSION IF NOT EXISTS hstore"
sudo -u postgres psql template1 -c "CREATE EXTENSION IF NOT EXISTS fuzzystrmatch"
sudo -u postgres psql -c "CREATE DATABASE pick_an_otm_db_name OWNER pick_an_otm_username"
sudo -u postgres psql pick_an_otm_db_name -c "CREATE EXTENSION IF NOT EXISTS postgis"

