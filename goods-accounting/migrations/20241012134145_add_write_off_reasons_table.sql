-- +goose Up
-- +goose StatementBegin
create table if not exists write_off_reasons
(
    id     serial primary key,
    reason text not null unique
);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
drop table if exists write_off_reasons;
-- +goose StatementEnd
