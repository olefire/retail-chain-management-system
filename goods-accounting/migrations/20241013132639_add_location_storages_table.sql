-- +goose Up
-- +goose StatementBegin
create table if not exists location_storages
(
    id              serial primary key,
    location_id     int not null references locations (id),
    storage_type_id int not null references storage_types (id),
    quantity        int not null
);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
drop table if exists location_storages;
-- +goose StatementEnd
