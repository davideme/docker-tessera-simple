FROM nodesource/node:precise

RUN apt-get update
RUN apt-get install -y python-pip python-dev curl git gunicorn supervisor

# Tessera
RUN mkdir /src && git clone https://github.com/urbanairship/tessera.git /src/tessera
ADD config.py /src/tessera/config.py

workdir	/src/tessera
RUN pip install -r requirements.txt
RUN pip install -r dev-requirements.txt
RUN npm install -g grunt-cli
RUN npm install
RUN grunt

# Supervisord
ADD	./supervisord.conf /etc/supervisor/conf.d/supervisord.conf

expose :80

CMD	["/usr/bin/supervisord"]
