#When you face problem of these; 

SQLSTATE[HY000] [1045] Access denied for user 'root'@'localhost' (using password: YES/NO)
This error message means that your database is not configured to allow connections 
of user root with whatever password you specified.

>>Go to Terminal;

>>run this command to log into root account 

mysql -u root -p
(put your password)


>>then run this command; 

ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'enter_password_here';

>>Go to log in again 


Check Database >> .env

>>first make sure your DB credential and DB Host is set correctly in .env file.

DB_CONNECTION=mysql
DB_HOST=localhost
DB_PORT=3306
DB_DATABASE=transport_db
DB_USERNAME=root
DB_PASSWORD=


>>To come over this issue you have to execute the all the below commands:

php artisan route:cache
php artisan route:clear
php artisan config:cache
php artisan config:clear
php artisan optimize


>> Upload file of your database into phpmyadmin 
>> Go to Terminal and run rum command; php artisan serve

** I can fix my problems with these solution when MySQL and PhpMyAdmin cannot run on server including loss connection with DB.
