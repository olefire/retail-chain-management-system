-- +goose Up
-- +goose StatementBegin
create table if not exists supplies
(
    id                     serial primary key,
    supply_contract_id     int  not null references supply_contracts (id),
    location_id            int  not null references locations (id),
    distribution_center_id int references locations (id), -- Для случая когда поставка сначала пришла в распределительный центр
    supply_date            date not null default now()
);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
drop table if exists supply;
-- +goose StatementEnd
