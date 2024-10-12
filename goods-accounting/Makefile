BIN := $(CURDIR)/bin

LOCAL_MIGRATION_DIR=./migrations
LOCAL_MIGRATION_DSN="host=localhost port=54322 dbname=posgres user=postgres password=postgres sslmode=disable"

.PHONY: update-all-deps
update-all-deps:
	go get -u ./... && go mod tidy

.PHONY: local-migration-status
local-migration-status:
	$(BIN)/goose -v -dir ${LOCAL_MIGRATION_DIR} postgres ${LOCAL_MIGRATION_DSN} status

.PHONY: local-migration-up
local-migration-up:
	$(BIN)/goose -v -dir ${LOCAL_MIGRATION_DIR} postgres ${LOCAL_MIGRATION_DSN} up

.PHONY: local-migration-up-by-one
local-migration-up-by-one:
	$(BIN)/goose -v -dir ${LOCAL_MIGRATION_DIR} postgres ${LOCAL_MIGRATION_DSN} up-by-one

.PHONY: local-migration-down
local-migration-down:
	$(BIN)/goose -v -dir ${LOCAL_MIGRATION_DIR} postgres ${LOCAL_MIGRATION_DSN} down

.PHONY: local-migration-generate
local-migration-generate:
	$(BIN)/goose -v -dir ${LOCAL_MIGRATION_DIR} create $(name) sql

.PHONY: install/goose
install/goose:
	$(info Installing goose...)
	GOBIN=$(BIN) go install github.com/pressly/goose/v3/cmd/goose@latest
