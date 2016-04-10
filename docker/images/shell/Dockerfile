FROM alpine_base

ENV USER docker_base
ENV UID 501
ENV HOME /home/$USER

RUN adduser $USER -u $UID -g "" -D -S && \
	apk add bash vim

USER $USER
WORKDIR $HOME
ENTRYPOINT [ "/bin/bash" ]
CMD [ "--login" ]


