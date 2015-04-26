Thi is folder to hole joomla mysql dump file.


mysqldump.exe --user=root --host=localhost --protocol=tcp --port=3306 --default-character-set=utf8 --single-transaction=TRUE --skip-triggers "joomla"

mysqldump --user=root -p --host=localhost --protocol=tcp --port=3306 --default-character-set=utf8 --single-transaction=TRUE --skip-triggers --add-drop-database --databases  "joomla"  > Dump.sql
