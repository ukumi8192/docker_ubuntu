FROM ubuntu
MAINTAINER by Hoya.Park <ukumi8192@gmail.com>
COPY ./start.sh /
RUN chmod 755 /start.sh
RUN /start.sh
CMD bash
#RUN apt install -y python3.7
#RUN ln -s /usr/bin/python3.7 /usr/bin/python
# ENTRYPOINT ["/xx/sshd","sshd"]