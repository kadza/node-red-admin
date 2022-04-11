FROM nodered/node-red:2.1.3-12-minimal

USER node-red
COPY settings.js /data/settings.js
COPY .npmrc /data/.npmrc

COPY docker-entrypoint.sh /bin/docker-entrypoint.sh
USER 0
RUN chmod +x /bin/docker-entrypoint.sh
USER node-red
ENTRYPOINT ["/bin/docker-entrypoint.sh"]