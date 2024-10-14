-- +goose Up
-- +goose StatementBegin
create table if not exists product_packages
(
    id   serial primary key,
    name text not null
);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
drop table if exists product_packages;
-- +goose StatementEnd
