-- +goose Up
-- +goose StatementBegin
create table if not exists products
(
    id                serial primary key,
    name              text  not null,
    manufacturer_id   int   not null,
    type_id           int   not null,
    package_id        int   not null,
    dimension_id      int   not null,
    dimension_value   float not null,
    volume            float not null,
    units_per_package int   not null,
    shelf_life_days   int   not null,
    barcode           text  not null,
    additional_info   json,
    foreign key (manufacturer_id) references manufacturers (id),
    foreign key (type_id) references product_types (id),
    foreign key (dimension_id) references dimensions (id),
    foreign key (package_id) references product_packages (id)
);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
drop table if exists products;
-- +goose StatementEnd
