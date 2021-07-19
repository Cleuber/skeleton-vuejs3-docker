 
FROM node:16-slim

RUN apt-get -y update \
 && apt-get install -y git \
 && apt-get autoremove -y \
 && apt-get autoclean -y \
 && apt-get clean -y \
 && rm -rf /var/lib/apt/lists/* \
 && yarn add @vue/cli -g

WORKDIR /home/app

# COPY . .

# RUN yarn install \
# && yarn run build

# EXPOSE 8080

# USER node

# CMD ["yarn", "serve"]
