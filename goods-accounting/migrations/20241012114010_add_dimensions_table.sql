-- +goose Up
-- +goose StatementBegin
create table if not exists dimensions
(
    id   serial primary key,
    name text not null unique
);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
drop table if exists dimensions;
-- +goose StatementEnd
