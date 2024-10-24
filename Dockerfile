FROM fedora

RUN dnf upgrade --refresh -y
RUN dnf install -y nodejs

COPY package.json package.json 
COPY pnpm-lock.yaml pnpm-lock.yaml
COPY index.js index.js

RUN npm install

ENTRYPOINT [ "node", "index.js" ]