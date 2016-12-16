#!/bin/bash

pghome="/var/lib/postgresql"
sudo cp -f /home/vagrant/production.pgdump ${pghome}/production.pgdump
sudo chown postgres:postgres ${pghome}/production.pgdump

sudo -u postgres sh -c "dropdb commondb"
sudo -u postgres sh -c "createdb -E UTF8 --locale=en_US.utf8 -T template0 -O commonuser commondb"
#sudo -u postgres sh -c "psql -f ${pghome}/production.pgdump commondb"
sudo -u postgres sh -c "pg_restore -d commondb ${pghome}/production.pgdump"

