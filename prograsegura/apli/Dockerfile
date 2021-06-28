FROM python:3.9

COPY ./requirements.txt /tmp

RUN pip3 install -r /tmp/requirements.txt

ENV LLAVE=""
ENV bdBase=""
ENV bdUser=""
ENV bdPass=""
ENV bdHost=""
ENV bdPort=""

RUN mkdir /code
RUN mkdir /start


COPY ./begin.sh /start

WORKDIR /code

RUN useradd equipo2 -s /bin/bash

RUN chown -R equipo2 /code
RUN chown -R equipo2 /start 

USER equipo2

RUN chmod +x /start/begin.sh

CMD /start/begin.sh