FROM nodered/node-red
LABEL maintainer "Shoichiro Sakaigawa <sakaigawa@pumpkinheads.jp>"

ADD https://api.github.com/repos/tjbotfan/virtual-tjbot-handson/git/refs/heads/master version.json
COPY node-red-settings/package.json /data/

RUN npm install --unsafe-perm --no-update-notifier --no-fund --only=production

COPY node-red-settings/flow.json /data/flows.json
COPY node-red-settings/flow_cred.json /data/
