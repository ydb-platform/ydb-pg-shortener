FROM dpage/pgadmin4:7.6
COPY pgadmin4.db /var/lib/pgadmin/pgadmin4.db

USER root
RUN mkdir -p /var/lib/pgadmin/sessions /var/lib/pgadmin/storage \
    && chmod -R a+rwx /var/lib/pgadmin && chmod a-x /var/lib/pgadmin/pgadmin4.db \
    && chown -R pgadmin /var/lib/pgadmin

USER pgadmin
