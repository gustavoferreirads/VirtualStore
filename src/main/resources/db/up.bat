for /r migrations/ %%F in (*.*) do java -jar -Dfile.encoding=UTF-8 liquibase-3.1.1.jar --driver=com.mysql.jdbc.Driver  --changeLogFile=migrations/%%~nxF --url="jdbc:mysql://localhost:3306/LaaS" --username=root --password=root --classpath=mysql-driver.jar  update
pause