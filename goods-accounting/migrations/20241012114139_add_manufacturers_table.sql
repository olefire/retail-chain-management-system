-- +goose Up
-- +goose StatementBegin
create table if not exists manufacturers
(
    id                serial primary key,
    name              text not null,
    manufacturer_code text not null,
    country           text not null,
    additional_info   json
);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
drop table if exists manufacturers;
-- +goose StatementEnd
