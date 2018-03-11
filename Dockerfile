FROM alpine:3.7

WORKDIR /home/

RUN apk add --no-cache ansible sshpass openssh-client

COPY ./files /home/

CMD ["ansible-playbook", "ansible/minitest.yml", "-i", "ansible/hosts"]#, "-v"]