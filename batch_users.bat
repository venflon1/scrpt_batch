:: digitare il comando nel seguente modo: nome del file seguito da username, password, utenza da creare
::				 			%1  %2   %3   %4    %5      %6  		 %7            %8   %9
:: esempio: nome_file.bat user pass host port db_name utenza password_utenza_prod  <   file.sql
:: esempio esecuzione: create_user_and_db root root encelado 3306 db_01 roberto_user qwerty	 

mysql  --user=%1 --password=%2 --host=%3 --port=%4 --execute="CREATE DATABASE %5_dev_db;   CREATE USER '%6_dev'@'localhost' IDENTIFIED BY '%6_dev'; GRANT ALL ON %5_dev_db.* TO '%6_dev'@'localhost'; FLUSH PRIVILEGES;  CREATE DATABASE %5_test_db;  CREATE USER '%6_test'@'localhost' IDENTIFIED BY '%6_test'; GRANT ALL ON %5_test_db.* TO '%6_test'@'localhost'; FLUSH PRIVILEGES; CREATE DATABASE %5_stage_db; CREATE USER '%6_stage'@'localhost' IDENTIFIED BY '%6_stage'; GRANT ALL ON %5_stage_db.* TO '%6_stage'@'localhost'; FLUSH PRIVILEGES; CREATE DATABASE %5_prod_db;  CREATE USER '%6_prod'@'localhost' IDENTIFIED BY '%7'; GRANT ALL ON %5_prod_db.* TO '%6_prod'@'localhost'; FLUSH PRIVILEGES;" %8 %9
