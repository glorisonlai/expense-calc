
FROM timescale/timescaledb:2.8.0-pg12

ENV REPO /usr/src/db

RUN apk add make curl

RUN curl -fsSLo \
	/usr/local/bin/dbmate \
	https://github.com/amacneil/dbmate/releases/latest/download/dbmate-linux-amd64

RUN chmod +x /usr/local/bin/dbmate

RUN mkdir ${REPO}

WORKDIR ${REPO}

COPY . ${REPO}

RUN ls -R ${REPO}

COPY init-postgres-db.sh /docker-entrypoint-initdb.d/init-sqls.sh

