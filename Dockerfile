FROM ubuntu

WORKDIR /app
COPY . /app 

ENTRYPOINT ["/bin/bash", "/app/runit.sh"]


