-- +goose Up
-- +goose StatementBegin
create table if not exists write_offs
(
    id             serial primary key,
    product_id     int not null references products (id),
    reason_id      int not null references write_off_reasons (id),
    quantity       int not null,
    comment        text,
    write_off_date timestamp default now()
);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
drop table if exists write_offs;
-- +goose StatementEnd
