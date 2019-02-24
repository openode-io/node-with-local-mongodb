FROM node:10-alpine

WORKDIR /opt/app

ENV PORT=80

RUN echo 'npm install --production' >> /boot.sh

# npm start, make sure to have a start attribute in "scripts" in package.json
RUN echo 'sleep 3' >> /boot.sh
CMD sh /boot.sh && npm start
