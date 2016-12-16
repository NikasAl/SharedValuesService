CREATE USER contactmanager@localhost identified BY '1234';
GRANT usage ON *.* TO contactmanager@localhost identified BY '1234';

DROP DATABASE IF EXISTS contactmanager;
CREATE DATABASE IF NOT EXISTS contactmanager;
GRANT ALL privileges ON contactmanager.* TO contactmanager@localhost;
USE contactmanager;

