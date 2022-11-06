FROM nodered/node-red:2.1.3-12-minimal

USER 0
COPY docker-entrypoint.sh /bin/docker-entrypoint.sh
RUN chmod +x /bin/docker-entrypoint.sh
USER node-red
COPY settings.js /tmp/settings.js
ENTRYPOINT ["/bin/docker-entrypoint.sh"]