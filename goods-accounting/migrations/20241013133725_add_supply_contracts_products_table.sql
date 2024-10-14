-- +goose Up
-- +goose StatementBegin
create table if not exists supply_contracts_products
(
    id                 serial primary key,
    supply_contract_id int  not null references supply_contracts (id),
    product_id         int  not null references products (id),
    unique (supply_contract_id, product_id)
);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
drop table if exists supply_contracts_products;
-- +goose StatementEnd
