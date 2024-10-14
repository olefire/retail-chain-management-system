-- +goose Up
-- +goose StatementBegin
create table if not exists product_types
(
    id        serial primary key,
    name      text not null unique,
    parent_id int references product_types (id)
);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
drop table if exists product_types;
-- +goose StatementEnd
