for /r migrations/ %%F in (*.*) do java -jar -Dfile.encoding=UTF-8 liquibase.jar --driver=com.mysql.jdbc.Driver  --changeLogFile=migrations/%%~nxF --url="jdbc:mysql://localhost:3306/lojavirtual" --username=root --password=root --classpath=mysql-driver.jar  update
pause