
-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied
ALTER TABLE `entries` ADD `title` VARCHAR(191)  NULL  DEFAULT '' AFTER `body`;
ALTER TABLE `entries` ADD `content` TEXT  NULL  AFTER `title`;


-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back
ALTER TABLE `entries` DROP `title`;
ALTER TABLE `entries` DROP `content`;

