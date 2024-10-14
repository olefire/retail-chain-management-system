-- +goose Up
-- +goose StatementBegin
create table if not exists locations
(
    id           serial primary key,
    type_id      int   not null references locations_types (id),
    address      text  not null
);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
drop table if exists storage_locations;
-- +goose StatementEnd
