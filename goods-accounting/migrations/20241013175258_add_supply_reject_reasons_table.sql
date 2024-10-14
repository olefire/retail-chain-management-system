-- +goose Up
-- +goose StatementBegin
create table if not exists supply_reject_reasons
(
    id     serial primary key,
    reason text not null unique
);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
drop table if exists supply_reject_reasons;
-- +goose StatementEnd
