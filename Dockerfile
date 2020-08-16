FROM nodered/node-red
LABEL maintainer "Shoichiro Sakaigawa <sakaigawa@pumpkinheads.jp>"

ADD https://api.github.com/repos/tjbotfan/virtual-tjbot-handson/git/refs/heads/master version.json
COPY node-red-settings/package.json /data/

RUN npm install node-red-node-cf-cloudant
RUN npm install node-red-node-openwhisk
RUN npm install node-red-node-watson
RUN npm install node-red-nodes-cf-sqldb-dashdb
RUN npm install node-red-contrib-browser-utils
RUN npm install node-red-contrib-cos
RUN npm install node-red-contrib-embedded-file
RUN npm install node-red-contrib-file-buffer
RUN npm install node-red-contrib-google-translate
RUN npm install node-red-contrib-image-output
RUN npm install node-red-contrib-model-asset-exchange
RUN npm install node-red-contrib-moment
RUN npm install node-red-contrib-mqtt-broker
RUN npm install node-red-contrib-play-audio
RUN npm install node-red-dashboard
RUN npm install node-red-node-base64
RUN npm install node-red-contrib-virtual-tjbot

COPY node-red-settings/flow.json /data/flows.json
COPY node-red-settings/flow_cred.json /data/
