OUT_DOCKER = db

all:
	docker build -t ${OUT_DOCKER} .
	docker run -e POSTGRES_PASSWORD=postgres -e POSTGRES_USER=postgres -e POSTGRES_DB=expenses -p 0.0.0.0:5432:5432 ${OUT_DOCKER}


