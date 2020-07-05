FROM python:3.6

RUN apt-get update \
	&& apt-get install -y --no-install-recommends postgresql-client

COPY . /app
RUN chmod start
WORKDIR /app
EXPOSE 8000

ENTRYPOINT ["/app/start"]