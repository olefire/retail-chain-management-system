-- +goose Up
-- +goose StatementBegin
create table if not exists supplier_contacts
(
    id           serial primary key,
    supplier_id  int  not null references suppliers (id),
    name         text not null,
    phone_number text unique not null,
    email        text unique not null,
    position     text

);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
drop table if exists supplier_contacts;
-- +goose StatementEnd
