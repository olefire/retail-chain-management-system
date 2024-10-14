-- +goose Up
-- +goose StatementBegin
create table if not exists supply_rejects
(
    id         serial primary key,
    product_id int not null references products (id),
    supply_id  int not null references suppliers (id),
    reason_id  int not null references supply_reject_reasons (id),
    quantity   int not null,
    comment    text
);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
drop table if exists supply_rejects;
-- +goose StatementEnd
