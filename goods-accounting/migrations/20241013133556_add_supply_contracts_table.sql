-- +goose Up
-- +goose StatementBegin
create table if not exists supply_contracts
(
    id              serial primary key,
    supplier_id     int references suppliers (id),
    start_date      date not null,
    end_date        date
);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
drop table if exists supply_contracts;
-- +goose StatementEnd
