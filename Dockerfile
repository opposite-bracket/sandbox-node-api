# Build image:
#   docker build -t sandbox-napi-img .
# run command in daemon mode:
#   docker run --rm -d -p 3000:3000 --name napi sandbox-napi-img
# overwrite command so we can run shell in container
# (will replace running server with CMD, with ENTRYPOINT, it
# will ssh into running server)
#   docker run -it --rm -p 3000:3000 --name napi sandbox-napi-img /bin/sh
# apibuilder image is 948MB
# image running api is 123MB

FROM node:14 AS apibuilder
ADD . /app
WORKDIR /app
RUN npm install

FROM gcr.io/distroless/nodejs
COPY --from=apibuilder /app /app
WORKDIR /app
EXPOSE 3000
CMD ["server.js"]
