FROM node:lts-alpine3.10
RUN apk update && apk upgrade && apk add \
bash \
curl \
git
RUN git config --global user.name tomoshin02 && git config --global user.email tomoshin02@gmail.com
RUN curl https://cli-assets.heroku.com/install.sh | bash
CMD ["/bin/bash"]
EXPOSE 3000