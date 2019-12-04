:: mysqldump e' il comando di mysql per eseguire il backup di uno script sql
::
:: ho costruito un file bacth che esegue il backup di uno script sql prendendo da linea di comando alcuni  parametri come:
:: %1 = user, %2 password (user e password per l'utenza di mysql), %3=script da fare backup, %4=file di output dove viene fatto il backup
mysqldump --user=%1 --password=%2 %3 > %4