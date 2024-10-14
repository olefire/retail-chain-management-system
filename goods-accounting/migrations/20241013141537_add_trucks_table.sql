-- +goose Up
-- +goose StatementBegin
create table trucks
(
    id                  serial primary key,
    license_plate       varchar(10) unique not null, -- номерной знак
    capacity            int                not null, -- грузоподъемность (кг)
    driver_name         text               not null,
    driver_phone_number text               not null
);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
drop table if exists trucks;
-- +goose StatementEnd
