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

## Output

```sh
 docker image build -t hello-webpy .
Sending build context to Docker daemon  4.096kB
Step 1/8 : FROM alpine:3.16
 ---> 9c6f07244728
Step 2/8 : EXPOSE 9090
 ---> Using cache
 ---> fb2411d2b794
Step 3/8 : RUN apk add --no-cache bash
 ---> Using cache
 ---> 7394ed808f52
Step 4/8 : RUN apk add --no-cache python3 &&     if [ ! -e /usr/bin/python ]; then ln -sf python3 /usr/bin/pythonthon3 -m ensurepip &&     rm -r /usr/lib/python*/ensurepip &&     pip3 install --no-cache --upgrade pip setuptoolif [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi &&     pip3 install web.py
 ---> Running in f45e39db97dc
fetch https://dl-cdn.alpinelinux.org/alpine/v3.16/main/x86_64/APKINDEX.tar.gz
fetch https://dl-cdn.alpinelinux.org/alpine/v3.16/community/x86_64/APKINDEX.tar.gz
(1/10) Installing libbz2 (1.0.8-r1)
(2/10) Installing expat (2.4.9-r0)
(3/10) Installing libffi (3.4.2-r1)
(4/10) Installing gdbm (1.23-r0)
(5/10) Installing xz-libs (5.2.5-r1)
(6/10) Installing libgcc (11.2.1_git20220219-r2)
(7/10) Installing libstdc++ (11.2.1_git20220219-r2)
(8/10) Installing mpdecimal (2.5.1-r1)
(9/10) Installing sqlite-libs (3.38.5-r0)
(10/10) Installing python3 (3.10.5-r0)
Executing busybox-1.35.0-r17.trigger
OK: 59 MiB in 28 packages
Looking in links: /tmp/tmpjoax46xd
Processing /tmp/tmpjoax46xd/setuptools-58.1.0-py3-none-any.whl
Processing /tmp/tmpjoax46xd/pip-22.0.4-py3-none-any.whl
Installing collected packages: setuptools, pip
Successfully installed pip-22.0.4 setuptools-58.1.0
WARNING: Running pip as the 'root' user can result in broken permissions and conflicting behaviour with the systeer. It is recommended to use a virtual environment instead: https://pip.pypa.io/warnings/venv
Requirement already satisfied: pip in /usr/lib/python3.10/site-packages (22.0.4)
Collecting pip
  Downloading pip-22.2.2-py3-none-any.whl (2.0 MB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 2.0/2.0 MB 6.9 MB/s eta 0:00:00
Requirement already satisfied: setuptools in /usr/lib/python3.10/site-packages (58.1.0)
Collecting setuptools
  Downloading setuptools-65.4.1-py3-none-any.whl (1.2 MB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 1.2/1.2 MB 12.1 MB/s eta 0:00:00
Collecting wheel
  Downloading wheel-0.37.1-py2.py3-none-any.whl (35 kB)
Installing collected packages: wheel, setuptools, pip
  Attempting uninstall: setuptools
    Found existing installation: setuptools 58.1.0
    Uninstalling setuptools-58.1.0:
      Successfully uninstalled setuptools-58.1.0
  Attempting uninstall: pip
    Found existing installation: pip 22.0.4
    Uninstalling pip-22.0.4:
      Successfully uninstalled pip-22.0.4
Successfully installed pip-22.2.2 setuptools-65.4.1 wheel-0.37.1
WARNING: Running pip as the 'root' user can result in broken permissions and conflicting behaviour with the systeer. It is recommended to use a virtual environment instead: https://pip.pypa.io/warnings/venv
Collecting web.py
  Downloading web.py-0.62.tar.gz (623 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 623.2/623.2 kB 3.4 MB/s eta 0:00:00
  Installing build dependencies: started
  Installing build dependencies: finished with status 'done'
  Getting requirements to build wheel: started
  Getting requirements to build wheel: finished with status 'done'
  Preparing metadata (pyproject.toml): started
  Preparing metadata (pyproject.toml): finished with status 'done'
Collecting cheroot
  Downloading cheroot-8.6.0-py2.py3-none-any.whl (104 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 104.7/104.7 kB 11.1 MB/s eta 0:00:00
Collecting six>=1.11.0
  Downloading six-1.16.0-py2.py3-none-any.whl (11 kB)
Collecting more-itertools>=2.6
  Downloading more_itertools-8.14.0-py3-none-any.whl (52 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 52.2/52.2 kB 8.7 MB/s eta 0:00:00
Collecting jaraco.functools
  Downloading jaraco.functools-3.5.2-py3-none-any.whl (7.3 kB)
Building wheels for collected packages: web.py
  Building wheel for web.py (pyproject.toml): started
  Building wheel for web.py (pyproject.toml): finished with status 'done'
  Created wheel for web.py: filename=web.py-0.62-py3-none-any.whl size=78566 sha256=65d632d19f9a44aeab414143ab6096c962091a2f2255de013
  Stored in directory: /root/.cache/pip/wheels/66/0a/bf/09f23b07d62c6c4eb9d5b60e0754bdfe0412dd623bd8373dfa
Successfully built web.py
Installing collected packages: six, more-itertools, jaraco.functools, cheroot, web.py
Successfully installed cheroot-8.6.0 jaraco.functools-3.5.2 more-itertools-8.14.0 six-1.16.0 web.py-0.62
WARNING: Running pip as the 'root' user can result in broken permissions and conflicting behaviour with the systeer. It is recommended to use a virtual environment instead: https://pip.pypa.io/warnings/venv
Removing intermediate container f45e39db97dc
 ---> 241618bdbf66
Step 5/8 : COPY ./run.sh /
 ---> bdce0b3886b1
Step 6/8 : COPY ./hello.py /
 ---> 19751b8a1897
Step 7/8 : RUN chmod +x /run.sh
 ---> Running in 66a707d63a93
Removing intermediate container 66a707d63a93
 ---> 57f8faa13219
Step 8/8 : ENTRYPOINT /run.sh
 ---> Running in af34e5a2f6ab
Removing intermediate container af34e5a2f6ab
 ---> 9d4967e0741c
Successfully built 9d4967e0741c
Successfully tagged hello-webpy:latest
```
