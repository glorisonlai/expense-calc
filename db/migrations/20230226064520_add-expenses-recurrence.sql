-- migrate:up

ALTER TABLE expenses
  ADD COLUMN until DATE,
  ADD COLUMN recurrence INTEGER;

-- migrate:down

ALTER TABLE expenses
  DROP COLUMN until,
  DROP COLUMN recurrence;

