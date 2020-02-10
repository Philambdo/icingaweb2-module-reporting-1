CREATE TABLE IF NOT EXISTS template (
  id BIGSERIAL NOT NULL PRIMARY KEY,
  author varchar(255) NOT NULL,
  name varchar(255) NOT NULL,
  settings bytea NOT NULL,
  ctime NUMERIC(20) NOT NULL,
  mtime NUMERIC(20) NOT NULL
);

ALTER TABLE report ADD COLUMN template_id BIGINT NULL DEFAULT NULL;
ALTER TABLE report ADD CONSTRAINT report_template FOREIGN KEY (template_id) REFERENCES template (id);
