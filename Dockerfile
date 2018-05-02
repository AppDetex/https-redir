FROM debian:stable-slim

EXPOSE 80
HEALTHCHECK CMD curl -f localhost || exit 1

RUN apt-get update && \
	apt-get dist-upgrade --no-install-recommends --no-install-suggests -y && \
	apt-get --no-install-recommends --no-install-suggests install -y \
		lighttpd \
		curl && \
	apt-get -y autoremove && \
	apt-get -y clean && \
	rm -rf /var/lib/apt/lists/*

ADD lighttpd.conf /etc/lighttpd/
CMD ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"
