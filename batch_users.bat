:: digitare il comando nel seguente modo: nome del file seguito da username, password, utenza da creare
::				 			%1  %2   %3   %4    %5      %6  		 %7            %8   %9
:: esempio: nome_file.bat user pass host port db_name utenza password_utenza_prod  <   file.sql
:: esempio esecuzione: create_user_and_db root root encelado 3306 db_01 roberto_user qwerty	 

mysql  --user=%1 --password=%2 --host=%3 --port=%4 --execute="CREATE DATABASE %5_dev_db;CREATE USER '%6_dev'@'%3' IDENTIFIED BY '%6_dev';GRANT ALL ON %5_dev_db.* TO '%6_dev'@'%3';FLUSH PRIVILEGES;  CREATE DATABASE %5_test_db;CREATE USER '%6_test'@'%3' IDENTIFIED BY '%6_test';GRANT ALL ON %5_test_db.* TO '%6_test'@'%3';FLUSH PRIVILEGES; CREATE DATABASE %5_stage_db;CREATE USER '%6_stage'@'%3' IDENTIFIED BY '%6_stage';GRANT ALL ON %5_stage_db.* TO '%6_stage'@'%3';FLUSH PRIVILEGES;CREATE DATABASE %5_prod_db;CREATE USER '%6_prod'@'%3' IDENTIFIED BY '%7';GRANT ALL ON %5_prod_db.* TO '%6_prod'@'%3';FLUSH PRIVILEGES;" %8 %9
