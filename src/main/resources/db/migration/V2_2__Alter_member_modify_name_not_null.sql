UPDATE member SET name = '' WHERE name is null;

ALTER TABLE member MODIFY name VARCHAR(50) NOT NULL;