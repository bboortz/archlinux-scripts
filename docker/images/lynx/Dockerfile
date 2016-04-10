FROM alpine_base

ENV USER docker_lynx
ENV UID 503
ENV HOME /home/$USER

RUN adduser $USER -u $UID -g "" -D -s /bin/false -S && \
	apk add lynx

USER $USER
ENTRYPOINT [ "/usr/bin/lynx" ]





