:: digitare il comando nel seguente modo: nome del file seguito da username, password, database, file script da lanciare
:: esempio: nome_file.bat db_user db_psw script 
mysql --host localhost --user=%1 --password=%2 < %3