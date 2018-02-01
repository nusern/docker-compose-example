CREATE DATABASE IF NOT EXISTS example_db;

CREATE TABLE IF NOT EXISTS example_db.example_table
(
  PRIMARY KEY (id),
  id     INT         UNSIGNED AUTO_INCREMENT,
  num    INT,
  foobar VARCHAR(5)
);

INSERT INTO example_db.example_table VALUES (NULL, 1, 'bar');
INSERT INTO example_db.example_table VALUES (NULL, 3, 'foo');
INSERT INTO example_db.example_table VALUES (NULL, 2, 'bar');
INSERT INTO example_db.example_table VALUES (NULL, 3, 'foo');
INSERT INTO example_db.example_table VALUES (NULL, 5, 'foo');
INSERT INTO example_db.example_table VALUES (NULL, 1, 'bar');
INSERT INTO example_db.example_table VALUES (NULL, 2, 'bar');
INSERT INTO example_db.example_table VALUES (NULL, 9, 'foo');

CREATE USER IF NOT EXISTS example_user IDENTIFIED BY 'example_pass';
GRANT SELECT ON example_db.example_table TO example_user;
FLUSH PRIVILEGES;
