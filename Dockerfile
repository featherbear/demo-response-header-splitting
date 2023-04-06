FROM node:18 as build

WORKDIR /app
COPY . .

RUN yarn install --frozen-lockfile

FROM gcr.io/distroless/nodejs16-debian11
COPY --from=build /app /app

EXPOSE 8000
CMD ["/app/server.js"]