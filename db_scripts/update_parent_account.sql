SET @updating_account_id = 17;

SET @parent_account_id = 4729;

SELECT
  *
FROM
  accounts
WHERE account_id = @updating_account_id;

SELECT
  *
FROM
  accounts
WHERE account_id = @parent_account_id;

UPDATE
  accounts
SET
  parent_account_id = @parent_account_id
WHERE account_id = @updating_account_id;

SELECT
  *
FROM
  accounts
WHERE parent_account_id = @parent_account_id;

