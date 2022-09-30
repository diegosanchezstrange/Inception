CREATE DATABASE IF NOT EXISTS DB_NAME DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;

GRANT ALL ON DB_NAME.* TO 'DB_USER'@'localhost' IDENTIFIED BY 'DB_PASS';
GRANT ALL ON DB_NAME.* TO 'DB_USER'@'%' IDENTIFIED BY 'DB_PASS';

FLUSH PRIVILEGES;
