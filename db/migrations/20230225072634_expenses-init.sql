-- migrate:up
CREATE TABLE expenses (
  id INTEGER PRIMARY KEY,
  time DATE NOT NULL,
  description VARCHAR,
  amount NUMERIC NOT NULL
);


-- migrate:down

DROP TABLE expenses;

