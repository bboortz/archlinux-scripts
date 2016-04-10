FROM alpine_base
 
ENV USER docker_firefox
ENV UID 502
ENV HOME /home/$USER

RUN adduser $USER -u $UID -g "" -D -s /bin/false -S && \
	apk add --update dbus bash wget bzip2 binutils ca-certificates firefox && \
	rm -rf /var/cache/apk/*

USER $USER
ENTRYPOINT [ "/usr/bin/firefox" ]
#CMD [ "-no-remote" ]





