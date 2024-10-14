-- +goose Up
-- +goose StatementBegin
create table if not exists location_products
(
    id          serial primary key,
    location_id int not null references locations (id),
    product_id  int not null references products (id)
);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
drop table if exists location_products;
-- +goose StatementEnd
