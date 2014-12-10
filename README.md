# etcdctl Docker container

This is a Busybox-based etcdctl Docker container.
Designed to be small in size so you can quickly and easily run etcdctl commands
from other Docker containers without needing to install etcd in them.

[Available from Docker Hub as `cap10morgan/etcdctl`](https://registry.hub.docker.com/u/cap10morgan/etcdctl/)

## Usage

`docker run cap10morgan/etcdctl ls /`

## Inside other Docker containers

To use this from within other Docker containers running on a CoreOS host, you
need to let etcdctl talk to the etcd daemon running on the host.
You can run the parent container with `--net=host`.

You'll also need to bind mount the Docker socket on the host as a volume inside
the parent container so that it can run other docker containers.

## License

BSD
