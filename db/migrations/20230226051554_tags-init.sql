-- migrate:up
CREATE TABLE tags (
  name VARCHAR PRIMARY KEY
);

CREATE TABLE expense_tags (
  expense_id INTEGER,
  tag VARCHAR,
  PRIMARY KEY(expense_id, tag),
  CONSTRAINT fk_expense_id
    FOREIGN KEY(expense_id) REFERENCES EXPENSES(id),
  CONSTRAINT fk_tag
    FOREIGN KEY(tag) REFERENCES TAGS(name)
);


-- migrate:down

DROP TABLE expenses_tags;

DROP TABLE tags;

