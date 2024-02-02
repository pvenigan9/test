FROM node:21-bullseye-slim
#LABEL org.opencontainers.image.authors="sid@devopsdirective.com"
ENV NODE_ENV production
WORKDIR /usr/src/app/
COPY package*.json ./
#-------------------------------------------
# Use cache mount to speed up install of existing dependencies
#RUN --mount=type=cache,target=/usr/src/app/.npm \
  #npm set cache /usr/src/app/.npm && \
  #npm ci --only=production
#-------------------------------------------
USER node
COPY --chown=node:node ./ ./
EXPOSE 3000
CMD [ "node", "index.js" ]