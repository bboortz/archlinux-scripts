FROM ubuntu_base

ENV USER docker_firefox
ENV UID 502
ENV HOME /home/$USER

RUN adduser $USER --uid $UID --gecos "" --disabled-login --disabled-password --system && \
	apt-get install -y firefox && \
	apt-get clean

USER $USER
ENTRYPOINT [ "/usr/bin/firefox" ]
CMD [ "-no-remote" ]

