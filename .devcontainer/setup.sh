#!/bin/bash
# Runs once when the Codespace is first created.
set -e

echo "⏳ Starting MySQL..."
sudo mkdir -p /var/run/mysqld
sudo chown mysql:mysql /var/run/mysqld
sudo service mysql start

echo "🔧 Creating student database and user..."
sudo mysql <<'SQL'
CREATE DATABASE IF NOT EXISTS student_db;
CREATE USER IF NOT EXISTS 'student'@'localhost' IDENTIFIED BY 'student';
GRANT ALL PRIVILEGES ON student_db.* TO 'student'@'localhost';
FLUSH PRIVILEGES;
SQL

# Add a handy alias to .bashrc so students can just type 'db' to connect
if ! grep -q "alias db=" ~/.bashrc; then
  echo "" >> ~/.bashrc
  echo "# MySQL shortcut" >> ~/.bashrc
  echo "alias db='mysql -u student -pstudent student_db'" >> ~/.bashrc
fi

echo ""
echo "✅ MySQL is ready!"
echo "   Connect with:  mysql -u student -pstudent student_db"
echo "   Or just type:  db"
