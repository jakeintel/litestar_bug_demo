# Demo Litestar Crash on Python 3.12.4

Litestar throws an exception when start on a container with a readonly root filesystem and python 3.12.4.

With earlier versions of 3.12 it does not throw.

With a read/write filesystem is does not throw.

## Reproduce

~~~sh
docker build -t demo .
docker run --read-only -it --rm demo
~~~

## See it Pass with a Read/Write filesystem

~~~sh
docker build -t demo .
docker run -it --rm demo
~~~

## See it pass with and older Python

~~~sh
docker build -t demo-pass -f pass.Dockerfile .
docker run --read-only -it --rm demo-pass
~~~
