FROM node:12
WORKDIR /app
RUN npm install -g npm &&\
    npm install -g docpad@6.79.4 &&\
    docpad install eco &&\
    docpad install
CMD ["/usr/local/bin/docpad", "run", "-p", "8080"]