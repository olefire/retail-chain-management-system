-- +goose Up
-- +goose StatementBegin
create table if not exists suppliers
(
    id              serial primary key,
    name            text unique not null,
    address         text        not null,
    phone_number    text unique not null,
    email           text unique not null,
    additional_info json
);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
drop table if exists suppliers;
-- +goose StatementEnd
