FROM n8nio/n8n:latest

USER root

WORKDIR /home/node/packages/cli

ENV NODE_FUNCTION_ALLOW_BUILTIN=crypto

ENTRYPOINT []

COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]
