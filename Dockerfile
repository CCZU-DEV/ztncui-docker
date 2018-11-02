FROM keynetworks/ztncui

RUN yum install -y socat

COPY new-exec.sh /usr/sbin/

ENTRYPOINT ["/usr/sbin/new-exec.sh"]
