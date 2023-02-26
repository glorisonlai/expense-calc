#!/bin/sh

REPO="/usr/src/db"

ls

ls migrations

dbmate \
	-u "postgres://${POSTGRES_USER}:${POSTGRES_PASSWORD}@:5432/${POSTGRES_DB}?sslmode=disable" \
	-d "$REPO/migrations" \
	up

