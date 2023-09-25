FROM dpage/pgadmin4:7.6

USER root
RUN mkdir -p /var/lib/pgadmin/sessions /var/lib/pgadmin/storage
COPY pgadmin4.db /var/lib/pgadmin/pgadmin4.db
RUN chmod -R a+rwx /var/lib/pgadmin && chmod 0600 /var/lib/pgadmin/pgadmin4.db \
    && chown -R pgadmin /var/lib/pgadmin

USER pgadmin
