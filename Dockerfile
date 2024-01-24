FROM ubuntu:noble-20231221
RUN  apt update && apt install -y        \
        ansible=7.7.0+dfsg-3             \
        python3-pip=23.3+dfsg-1          \
        sshpass=1.09-1                   \
        git=1:2.43.0-1ubuntu1            \
        fish=3.7.0-1                     \ 
        vim=2:9.1.0-1ubuntu1
RUN  ansible-galaxy install git+https://github.com/openstack/ansible-hardening
COPY ansible             /ansible
COPY .secrets            /secrets
COPY startup.sh          /
RUN  chmod +x            /ansible/Makefile
RUN  chmod +x            /startup.sh
RUN  chmod +x            /ansible/ssh-agent-initializer.sh
WORKDIR  /ansible
CMD "/startup.sh"
