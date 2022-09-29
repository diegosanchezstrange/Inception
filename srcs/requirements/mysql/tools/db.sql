CREATE DATABASE wordpress IF NOT EXISTS DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;

GRANT ALL ON wordpress.* TO 'wp'@'localhost' IDENTIFIED BY 'password';
GRANT ALL ON wordpress.* TO 'wp'@'%' IDENTIFIED BY 'password';

FLUSH PRIVILEGES;

EXIT;
