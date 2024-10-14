-- +goose Up
-- +goose StatementBegin
create table if not exists countries
(
    id         serial primary key,
    name       text    not null,
    iso_code   char(2) not null,
    phone_code varchar(5)
);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
drop table if exists countries;
-- +goose StatementEnd
