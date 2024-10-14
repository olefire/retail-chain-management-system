-- +goose Up
-- +goose StatementBegin
create table if not exists storage_types
(
    id          serial primary key,
    name        text  not null,
    capacity    float not null,
    max_weight  float not null,
    description text,
    created_at  timestamp default now()
);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
drop table if exists storage_types;
-- +goose StatementEnd
