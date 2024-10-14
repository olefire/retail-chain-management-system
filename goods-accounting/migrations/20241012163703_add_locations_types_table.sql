-- +goose Up
-- +goose StatementBegin
create table if not exists locations_types
(
    id   serial primary key,
    name text unique not null
);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
drop table if exists locations_types;
-- +goose StatementEnd
