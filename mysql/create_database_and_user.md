# Create database mysql

CREATE DATABASE <db_name>;

# Create user

CREATE USER '<user_name>'@'localhost' IDENTIFIED BY '<user_password>';

# Grant privileges

GRANT ALL PRIVILEGES ON <db_name>.* TO '<user_name>'@'localhost';
