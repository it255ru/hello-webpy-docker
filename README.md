# Webpy Hello World Docker Image

`HV: VirtualBox`

`OS: Alpine linux`

## Installation
```sh
# clone the project
git clone https://github.com/it255ru/hello-webpy-docker.git
# build image
docker image build -t hello-webpy .
# start service, which binds a local webpy project to /code in container
docker run -d --name="hello-webpy" -p 127.0.0.1:9090:9090 hello-webpy
# open in browser
http://localhost:9090
http://localhost:9090/test
```
