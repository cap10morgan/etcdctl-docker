FROM cap10morgan/busybase
ENV ETCD_VERSION 0.4.6

# TODO: Build this from upstream source once they merge my PR:
#       https://github.com/coreos/etcd/pull/1828

ADD ./etcdctl /bin/etcdctl

ENTRYPOINT ["/bin/etcdctl"]
