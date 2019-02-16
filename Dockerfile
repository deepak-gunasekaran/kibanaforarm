FROM ind3x/rpi-kibana

# add  our user and group first to make sure their IDs get assigned consistently
RUN apt-get update && apt-get install -y \
        ca-certificates \
        wget \
    --no-install-recommends

COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

EXPOSE 5601
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["kibana"]
