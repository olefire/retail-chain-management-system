-- +goose Up
-- +goose StatementBegin
create table if not exists product_batches
(
    id               serial primary key,
    product_id       int  not null references location_products (id),
    supply_id        int  not null references supplies (id),
    manufacture_date date not null,
    quantity         int  not null
);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
drop table if exists product_batches
-- +goose StatementEnd
