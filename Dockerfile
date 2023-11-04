
FROM postgres
USER root
ENV POSTGRES_DB mydb
ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD postgres
ENV POSTGRES_HOST_AUTH_METHOD=trust
COPY init.sql /docker-entrypoint-initdb.d/
EXPOSE 5432
# CMD ["/bin/bash","-c","/startUpScript.sh && tail -f /dev/null"]



# RUN su postgres

# CMD ["/bin/bash", "-c","pg_ctl","-D" ,"/var/lib/postgresql/data" ,"-l" ,"logfile", "start"]
# CMD ["systemctl","start" ,"postgresql"]