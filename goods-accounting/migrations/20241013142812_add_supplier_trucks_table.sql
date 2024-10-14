-- +goose Up
-- +goose StatementBegin
create table if not exists supplier_trucks
(
    id          serial primary key,
    supplier_id int not null references suppliers (id),
    truck_id    int not null references trucks (id)
);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
drop table if exists supplier_trucks;
-- +goose StatementEnd
