# Webpy Hello World Docker Image

`HV: VirtualBox`

`OS: Alpine linux`

## Installation

`$ git clone https://github.com/nestor-alonso/hello-webpy-docker.git`

`$ docker image build -t hello-webpy .`

`$ docker run -d --name="hello-webpy" -p 127.0.0.1:9090:9090 hello-webpy`

`http://localhost:9090`

`http://localhost:9090/test`
