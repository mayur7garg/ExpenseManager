for i in {1..50};
do
    /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P $SA_PASSWORD -i DB_Init.sql
    if [ $? -eq 0 ]
    then
        echo "'ExpenseManager' DB creation successful!"
        break
    else
        echo "Attempt ${i} for 'ExpenseManager' DB creation failed."
        sleep 1
    fi
done