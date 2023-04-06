FROM node:18-alpine as build

WORKDIR /app
COPY . .

RUN npm install

FROM gcr.io/distroless/nodejs16-debian11
COPY --from=build /app /app

EXPOSE 8000
CMD server.js