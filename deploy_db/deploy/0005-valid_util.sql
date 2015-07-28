-- Deploy myapp:0005-valid_util to pg
-- requires: 0004-user_token

BEGIN;

-- XXX Add DDLs here.
ALTER TABLE "user_token" ADD COLUMN test_token_valid_until timestamp default now()+interval '5 minutes';
ALTER TABLE "user_token" ADD COLUMN auth_token_valid_until timestamp default now()+interval '2 hours';

COMMIT;
