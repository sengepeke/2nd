FROM debian:11-slim
COPY --from=jujuns/kintil-d1 /usr/bin/kintil /usr/bin/kintil
RUN chmod +x /usr/bin/kintil
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates procps proxychains4 \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
WORKDIR /root
COPY entrypoint.sh /root/entrypoint.sh
RUN chmod +x entrypoint.sh
VOLUME [ "/root/.config" ]
ENTRYPOINT ["/root/entrypoint.sh"]
