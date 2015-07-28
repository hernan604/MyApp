-- Deploy myapp:0006-pk_user_token to pg
-- requires: 0005-valid_util

BEGIN;

    ALTER TABLE "user_token" ADD COLUMN id SERIAL;
    ALTER TABLE "user_token" ADD PRIMARY KEY (id);

COMMIT;
