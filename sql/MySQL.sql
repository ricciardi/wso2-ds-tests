CREATE TABLE categories (
  id   INT          NOT NULL AUTO_INCREMENT,
  name varchar(150) NOT NULL,
  PRIMARY KEY (id)
);

create table products (
  id          INT          NOT NULL AUTO_INCREMENT,
  category_id INT          NOT NULL,
  name        VARCHAR(150) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (category_id) REFERENCES categories(id) ON UPDATE CASCADE ON DELETE RESTRICT
);

