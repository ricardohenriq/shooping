# Com o "MySql Command Line Client" aberto: Cole o COMANDO ABAIXO e Tecle ENTER
# mysql -u root -p
# source C:/xampp/htdocs/PROJETOS/Shopping/scriptsdb/CreateDB.sql;

CREATE DATABASE shopping CHARACTER SET utf8 COLLATE utf8_general_ci;

USE shopping;

CREATE USER 'shop' IDENTIFIED BY 'shop';
GRANT ALL PRIVILEGES ON *.* TO 'shop'@'%' IDENTIFIED BY 'shop';
GRANT ALL PRIVILEGES ON *.* TO 'shop'@'localhost' IDENTIFIED BY 'shop';
FLUSH PRIVILEGES;

## 20 Tabelas -------------------------------------------------------------------

CREATE TABLE user_types (
  id INT AUTO_INCREMENT PRIMARY KEY,
  type_name VARCHAR(255) NOT NULL,
  created DATETIME,
  modified DATETIME
);

CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  username VARCHAR(255) NOT NULL,
  user_type_id INT,
  created DATETIME,
  modified DATETIME,
  FOREIGN KEY user_type_key (user_type_id) REFERENCES user_types(id)
);

CREATE TABLE stores (
  id INT AUTO_INCREMENT PRIMARY KEY,
  store_name VARCHAR(255) NOT NULL,
  user_id INT NOT NULL,
  created DATETIME,
  modified DATETIME,
  FOREIGN KEY user_key (user_id) REFERENCES users(id)
);

CREATE TABLE categories (
  id INT AUTO_INCREMENT PRIMARY KEY,
  category_name VARCHAR(255) NOT NULL,
  created DATETIME,
  modified DATETIME
);

CREATE TABLE sub_categories (
  id INT AUTO_INCREMENT PRIMARY KEY,
  sub_category_name VARCHAR(255) NOT NULL,
  category_id INT NOT NULL,
  created DATETIME,
  modified DATETIME,
  FOREIGN KEY category_key (category_id) REFERENCES categories(id)
);

CREATE TABLE products (
  id INT AUTO_INCREMENT PRIMARY KEY,
  product_name VARCHAR(255) NOT NULL,
  store_id INT NOT NULL,
  sub_category_id INT NOT NULL,
  quantity INT NOT NULL,
  sold INT,
  description VARCHAR(2500) NOT NULL,
  price DECIMAL(7,2) NOT NULL,
  old_price DECIMAL(7,2),
  visited INT,
  status INT,
  created DATETIME,
  modified DATETIME,
  FOREIGN KEY store_key (store_id) REFERENCES stores(id),
  FOREIGN KEY sub_category_key (sub_category_id) REFERENCES sub_categories(id)
);

CREATE TABLE bookings (
  id INT AUTO_INCREMENT PRIMARY KEY,
  product_id INT NOT NULL,
  quantity INT NOT NULL,
  user_id INT NOT NULL,
  created DATETIME,
  modified DATETIME,
  FOREIGN KEY product_key (product_id) REFERENCES products(id),
  FOREIGN KEY user_key (user_id) REFERENCES users(id)
);

CREATE TABLE features (
  id INT AUTO_INCREMENT PRIMARY KEY,
  intern_code CHAR(6) NOT NULL UNIQUE,
  feature_name VARCHAR(255) NOT NULL UNIQUE,
  created DATETIME,
  modified DATETIME
);

CREATE TABLE product_features (
  id INT AUTO_INCREMENT PRIMARY KEY,
  feature_value VARCHAR(255) NOT NULL,
  feature_intern_code CHAR(6) NOT NULL,
  product_id INT NOT NULL,
  created DATETIME,
  modified DATETIME,
  FOREIGN KEY feature_key (feature_intern_code) REFERENCES features(intern_code),
  FOREIGN KEY product_key (product_id) REFERENCES products(id)
);

CREATE TABLE media_types (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name_media_type VARCHAR(255) NOT NULL,
  created DATETIME,
  modified DATETIME
);

CREATE TABLE medias (
  id INT AUTO_INCREMENT PRIMARY KEY,
  media_type_id INT NOT NULL,
  product_id INT NOT NULL,
  path VARCHAR(255) NOT NULL,
  created DATETIME,
  modified DATETIME,
  FOREIGN KEY media_type_key (media_type_id) REFERENCES media_types(id),
  FOREIGN KEY product_key (product_id) REFERENCES products(id)
);

CREATE TABLE promotions (
  id INT AUTO_INCREMENT PRIMARY KEY,
  promotion_name VARCHAR(255) NOT NULL,
  duration INT NOT NULL,
  user_id INT NOT NULL,
  date_start DATETIME,
  date_end DATETIME,
  created DATETIME,
  modified DATETIME
);

CREATE TABLE promotion_products (
  id INT AUTO_INCREMENT PRIMARY KEY,
  product_id INT NOT NULL,
  promotion_id INT NOT NULL,
  promotion_price DECIMAL(7,2) NOT NULL,
  promotion_quantity INT NOT NULL,
  created DATETIME,
  modified DATETIME,
  FOREIGN KEY product_key (product_id) REFERENCES products(id),
  FOREIGN KEY promotion_key (promotion_id) REFERENCES promotions(id)
);

CREATE TABLE subscribers (
  id INT AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR(255) NOT NULL,
  created DATETIME,
  modified DATETIME
);

CREATE TABLE banner_types (
  id INT AUTO_INCREMENT PRIMARY KEY,
  type_name VARCHAR(255) NOT NULL,
  created DATETIME,
  modified DATETIME
);

CREATE TABLE banners (
  id INT AUTO_INCREMENT PRIMARY KEY,
  banner_type_id INT NOT NULL,
  user_id INT NOT NULL,
  banner_description VARCHAR(255) NOT NULL,
  path_banner VARCHAR(255) NOT NULL,
  url_redirect VARCHAR(255) NOT NULL,
  created DATETIME,
  modified DATETIME,
  FOREIGN KEY banner_type_key (banner_type_id) REFERENCES banner_types(id),
  FOREIGN KEY user_key (user_id) REFERENCES users(id)
);

CREATE TABLE offers (
  id INT AUTO_INCREMENT PRIMARY KEY,
  product_id  INT NOT NULL,
  name VARCHAR(255) NOT NULL,
  description VARCHAR(1000) NOT NULL,
  date_start DATETIME NOT NULL,
  date_end DATETIME NOT NULL,
  created DATETIME,
  modified DATETIME,
  FOREIGN KEY product_key (product_id) REFERENCES products(id)
);

CREATE TABLE offer_banners (
  id INT AUTO_INCREMENT PRIMARY KEY,
  path VARCHAR(255) NOT NULL,
  offer_id INT NOT NULL,
  created DATETIME,
  modified DATETIME,
  FOREIGN KEY offer_key (offer_id) REFERENCES offers(id)
);

CREATE TABLE news (
  id INT AUTO_INCREMENT PRIMARY KEY,
  store_id INT NOT NULL,
  name VARCHAR(255) NOT NULL,
  description VARCHAR(255) NOT NULL,
  created DATETIME,
  modified DATETIME,
  FOREIGN KEY store_key (store_id) REFERENCES stores(id)
);

CREATE TABLE new_banners (
  id INT AUTO_INCREMENT PRIMARY KEY,
  path VARCHAR(255) NOT NULL,
  new_id INT NOT NULL,
  created DATETIME,
  modified DATETIME,
  FOREIGN KEY new_key (new_id) REFERENCES news(id)
);

CREATE TABLE comments(
  id INT AUTO_INCREMENT PRIMARY KEY,
  comment_text VARCHAR(500),
  product_id INT NOT NULL,
  user_id INT NOT NULL,
  answered TINYINT,
  created DATETIME,
  modified DATETIME,
  FOREIGN KEY product_key (product_id) REFERENCES products(id),
  FOREIGN KEY user_key (user_id) REFERENCES users(id)
);

CREATE TABLE answers(
  id INT AUTO_INCREMENT PRIMARY KEY,
  answer_text VARCHAR(500),
  comment_id INT NOT NULL,
  user_id INT NOT NULL,
  created DATETIME,
  modified DATETIME,
  FOREIGN KEY comment_key (comment_id) REFERENCES comments(id),
  FOREIGN KEY user_key (user_id) REFERENCES users(id)
);

CREATE TABLE store_medias(
  id INT AUTO_INCREMENT PRIMARY KEY,
  media_type_id INT NOT NULL,
  store_id INT NOT NULL,
  path VARCHAR(255) NOT NULL,
  created DATETIME,
  modified DATETIME,
  FOREIGN KEY media_type_key (media_type_id) REFERENCES media_types(id),
  FOREIGN KEY store_key (store_id) REFERENCES stores(id)
);