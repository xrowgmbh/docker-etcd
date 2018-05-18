FROM arm32v7/centos
ENV ETCD_UNSUPPORTED_ARCH=arm
RUN yum install -y etcd; yum clean all
EXPOSE 2379 2380
CMD ["/usr/bin/etcd"]