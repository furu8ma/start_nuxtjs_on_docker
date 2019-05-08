FROM node:lts

RUN apt-get update && \
    apt-get upgrade -y && \
    yarn global add @vue/cli && \
    yarn global add @vue/cli-init && \
    yarn add firebase --save

EXPOSE 3000
WORKDIR /root

CMD tail -f /dev/null
