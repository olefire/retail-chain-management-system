-- +goose Up
-- +goose StatementBegin
create table if not exists contract_products
(
    id               serial primary key,
    contract_id      int references supply_contracts (id),
    product_id       int references products (id) on delete cascade,
    quantity         int  not null,
    manufacture_date date not null
);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
drop table if exists contract_products;
-- +goose StatementEnd
