FROM hypriot/rpi-alpine-scratch

MAINTAINER Psycho0verload based on Ian D. Rossi

RUN \
	mkdir -p /aws && \
	apk -Uuv add groff less python py-pip git && \
	pip install requests && \
	apk --purge -v del py-pip && \
	rm /var/cache/apk/*

WORKDIR /backup-tool

RUN git clone https://github.com/ysde/grafana-backup-tool.git /backup-tool

COPY backup.sh /backup-tool/backup.sh

ENTRYPOINT sh backup.sh
