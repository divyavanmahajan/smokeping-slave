FROM linuxserver/smokeping

# add local files
RUN mkdir /cache && \
    chown abc /cache && \
    chmod +s /usr/bin/tcptraceroute && \
    rm -rf /etc/services.d/apache

COPY root/ /

# ports and volumes
EXPOSE 80
VOLUME /config /data /cache

# Override these environment variables
ENV SLAVE_SECRET=1234567 
ENV MASTER_URL=http://smokeping-master:80/smokeping/smokeping.cgi
