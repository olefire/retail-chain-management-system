-- +goose Up
-- +goose StatementBegin
create table if not exists product_types_storage (
    product_type_id int not null references product_types (id),
    storage_type_id int not null references storage_types (id),
    PRIMARY KEY (product_type_id, storage_type_id)
);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
drop table if exists product_types_storage;
-- +goose StatementEnd
