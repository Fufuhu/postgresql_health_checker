FROM alpine:latest

RUN apk --no-cache add bash postgresql-client
ENV HOST=dummy
ENV USER=user
ENV DATABASE=database
ENV PGPASSWORD=password

COPY run.sh /usr/local/bin/run.sh
RUN chmod +x /usr/local/bin/run.sh
CMD ["run.sh"]

