FROM mcr.microsoft.com/mssql/server:2019-CU16-ubuntu-20.04

WORKDIR /code/db

EXPOSE 1433
COPY . .

USER root

RUN mkdir -p /var/opt/mssql/data && chown mssql /var/opt/mssql/data
RUN mkdir -p /var/opt/mssql/log && chown mssql /var/opt/mssql/log
RUN mkdir -p /var/opt/mssql/backup && chown mssql /var/opt/mssql/backup
RUN chmod +x ./Setup_DB.sh

USER mssql

CMD /bin/bash ./Entrypoint.sh