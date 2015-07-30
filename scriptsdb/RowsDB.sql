# Com o "MySql Command Line Client" aberto: Cole o COMANDO ABAIXO e Tecle ENTER
# mysql -u shop -p
# source C:/xampp/htdocs/PROJETOS/Shopping/scriptsdb/RowsDB.sql;

USE shopping;

# 3 registros na tabela "user_types" -------------------------------------------------

INSERT INTO user_types (type_name, created, modified)
VALUES ('common', CURDATE(), CURDATE());

INSERT INTO user_types (type_name, created, modified)
VALUES ('businessman', CURDATE(), CURDATE());

INSERT INTO user_types (type_name, created, modified)
VALUES ('admin', CURDATE(), CURDATE());

# 11 registros na tabela "users" -----------------------------------------------------

INSERT INTO users (email, password, username, user_type_id, created, modified)
VALUES ('bill@outlook.com', '123456', 'bill', 1, CURDATE(), CURDATE());

INSERT INTO users (email, password, username, user_type_id, created, modified)
VALUES ('larry@gmail.com', '098765', 'larry', 2, CURDATE(), CURDATE());

INSERT INTO users (email, password, username, user_type_id, created, modified)
VALUES ('steve@apple.com', '1234567890', 'steve', 3, CURDATE(), CURDATE());

INSERT INTO users (email, password, username, user_type_id, created, modified)
VALUES ('maria@hotmail.com', 'qwerty', 'maria', 1, CURDATE(), CURDATE());

INSERT INTO users (email, password, username, user_type_id, created, modified)
VALUES ('jose@hotmail.com', 'asdfg', 'jose', 1, CURDATE(), CURDATE());

INSERT INTO users (email, password, username, user_type_id, created, modified)
VALUES ('joao@hotmail.com', 'zxcv', 'joao', 1, CURDATE(), CURDATE());

INSERT INTO users (email, password, username, user_type_id, created, modified)
VALUES ('ford@hotmail.com', 'mnbvc', 'ford', 2, CURDATE(), CURDATE());

INSERT INTO users (email, password, username, user_type_id, created, modified)
VALUES ('toyota@hotmail.com', 'lkjhg', 'toyota', 1, CURDATE(), CURDATE());

INSERT INTO users (email, password, username, user_type_id, created, modified)
VALUES ('chevrolet@hotmail.com', 'poiuy', 'chevrolet', 1, CURDATE(), CURDATE());

INSERT INTO users (email, password, username, user_type_id, created, modified)
VALUES ('benz@hotmail.com', 'trewq', 'benz', 1, CURDATE(), CURDATE());

INSERT INTO users (email, password, username, user_type_id, created, modified)
VALUES ('dodge@hotmail.com', 'fdsa', 'dodge', 1, CURDATE(), CURDATE());

# INSERT INTO users (email, password, username, user_type_id, created, modified)
# VALUES ('harley@hotmail.com', 'davidson', 'davidson', 1, CURDATE(), CURDATE());

# 4 registros na tabela "stores" --------------------------------------------------

INSERT INTO stores (store_name, user_id, created, modified)
VALUES ('Loja A', 1, CURDATE(), CURDATE());

INSERT INTO stores (store_name, user_id, created, modified)
VALUES ('Loja B', 2, CURDATE(), CURDATE());

INSERT INTO stores (store_name, user_id, created, modified)
VALUES ('Loja C', 3, CURDATE(), CURDATE());

INSERT INTO stores (store_name, user_id, created, modified)
VALUES ('Loja D', 4, CURDATE(), CURDATE());

# 7 registros na tabela "products" --------------------------------------------------

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, thumbnail, status, created, modified)
VALUES ('Cama X', 1, 8, 20, 40, 'Muito Boa', 550.50, 400, 777, 'products/product2.jpg', 1, CURDATE(), CURDATE());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, thumbnail, status, created, modified)
VALUES ('Ferro de passar roupa W', 2, 7, 300, 200, 'Quente', 20.20, 25, 555, 'products/product1.jpg', 2, CURDATE(), CURDATE());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, thumbnail, status, created, modified)
VALUES ('Liquidificador B', 3, 6, 150, 900, 'Bom', 15, 12.90, 444, 'products/product5.jpg', 1, CURDATE(), CURDATE());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, thumbnail, status, created, modified)
VALUES ('MP3 N', 4, 5, 30, 60, 'Toca musica', 150.90, 140, 333, 'products/product4.jpg', 2, CURDATE(), CURDATE());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, thumbnail, status, created, modified)
VALUES ('Bacon T', 1, 3, 900, 1200, 'Bom dimais da conta', 5, 9.05, 222, 'products/product3.jpg', 1, CURDATE(), CURDATE());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, thumbnail, status, created, modified)
VALUES ('Camiseta U', 2, 1, 130, 200, 'Macia', 13.99, 20.00, 99, 'products/product2.jpg', 0, CURDATE(), CURDATE());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, thumbnail, status, created, modified)
VALUES ('Sapato R', 3, 2, 200, 400, 'Confortavel', 30.30, 25.00, 111, 'products/product1.jpg', 0, CURDATE(), CURDATE());

# 5 registros na tabela "bookings" ---------------------------------------------------

INSERT INTO bookings (product_id, quantity, user_id, created, modified)
VALUES (1, 5, 1, CURDATE(), CURDATE());

INSERT INTO bookings (product_id, quantity, user_id, created, modified)
VALUES (2, 10, 2, CURDATE(), CURDATE());

INSERT INTO bookings (product_id, quantity, user_id, created, modified)
VALUES (3, 5, 3, CURDATE(), CURDATE());

INSERT INTO bookings (product_id, quantity, user_id, created, modified)
VALUES (4, 8, 4, CURDATE(), CURDATE());

INSERT INTO bookings (product_id, quantity, user_id, created, modified)
VALUES (5, 6, 5, CURDATE(), CURDATE());

# 17 regsistros na tabela "categories" ------------------------------------------------

INSERT INTO categories (category_name, created, modified)
VALUES ('Alimentos', CURDATE(), CURDATE());

INSERT INTO categories (category_name, created, modified)
VALUES ('Bebidas', CURDATE(), CURDATE());

INSERT INTO categories (category_name, created, modified)
VALUES ('Móveis', CURDATE(), CURDATE());

INSERT INTO categories (category_name, created, modified)
VALUES ('Eletrodomesticos', CURDATE(), CURDATE());

INSERT INTO categories (category_name, created, modified)
VALUES ('Bazar', CURDATE(), CURDATE());

INSERT INTO categories (category_name, created, modified)
VALUES ('Livros', CURDATE(), CURDATE());

INSERT INTO categories (category_name, created, modified)
VALUES ('Eletroeletronicos', CURDATE(), CURDATE());

INSERT INTO categories (category_name, created, modified)
VALUES ('Portáteis', CURDATE(), CURDATE());

INSERT INTO categories (category_name, created, modified)
VALUES ('Informática', CURDATE(), CURDATE());

INSERT INTO categories (category_name, created, modified)
VALUES ('Brinquedos', CURDATE(), CURDATE());

INSERT INTO categories (category_name, created, modified)
VALUES ('Automotivo', CURDATE(), CURDATE());

INSERT INTO categories (category_name, created, modified)
VALUES ('Ferramentas', CURDATE(), CURDATE());

INSERT INTO categories (category_name, created, modified)
VALUES ('Vestuário', CURDATE(), CURDATE());

INSERT INTO categories (category_name, created, modified)
VALUES ('Calçados', CURDATE(), CURDATE());

INSERT INTO categories (category_name, created, modified)
VALUES ('Adereços', CURDATE(), CURDATE());

INSERT INTO categories (category_name, created, modified)
VALUES ('Papelaria', CURDATE(), CURDATE());

INSERT INTO categories (category_name, created, modified)
VALUES ('Outros', CURDATE(), CURDATE());

# 11 registros na tabela "sub_categories" ---------------------------------------------

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Industrilizado', 1, CURDATE(), CURDATE());

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('In natura', 1, CURDATE(), CURDATE());

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Comida pronta', 1, CURDATE(), CURDATE());

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Desidratado', 1, CURDATE(), CURDATE());

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Organico', 1, CURDATE(), CURDATE());

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Raizes', 1, CURDATE(), CURDATE());

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Doces', 1, CURDATE(), CURDATE());

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Alcoolica', 2, CURDATE(), CURDATE());

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Sucos', 2, CURDATE(), CURDATE());

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Refrigerante', 2, CURDATE(), CURDATE());

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Outras', 2, CURDATE(), CURDATE());

# 7 registros na tabela "features" ----------------------------------------------------

INSERT INTO features (feature_name, created, modified)
VALUES ('Altura', CURDATE(), CURDATE());

INSERT INTO features (feature_name, created, modified)
VALUES ('Peso', CURDATE(), CURDATE());

INSERT INTO features (feature_name, created, modified)
VALUES ('Validade', CURDATE(), CURDATE());

INSERT INTO features (feature_name, created, modified)
VALUES ('Garantia', CURDATE(), CURDATE());

INSERT INTO features (feature_name, created, modified)
VALUES ('Cor', CURDATE(), CURDATE());

INSERT INTO features (feature_name, created, modified)
VALUES ('Material', CURDATE(), CURDATE());

INSERT INTO features (feature_name, created, modified)
VALUES ('Largura', CURDATE(), CURDATE());

# 10 registros na tabela "product_features" --------------------------------------------

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('30 Cm', 1, 1, CURDATE(), CURDATE());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('2 Kg', 2, 2, CURDATE(), CURDATE());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('30 Dias', 3, 3, CURDATE(), CURDATE());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('6 Meses', 4, 4, CURDATE(), CURDATE());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Azul', 5, 5, CURDATE(), CURDATE());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Madeira', 6, 6, CURDATE(), CURDATE());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('40 Cm', 7, 7, CURDATE(), CURDATE());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('20 Kg', 2, 1, CURDATE(), CURDATE());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('90 Dias', 3, 2, CURDATE(), CURDATE());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('2 Meses', 4, 3, CURDATE(), CURDATE());

# 3 registros na tabela "media_types" --------------------------------------------------

INSERT INTO media_types(name_media_type , created, modified)
VALUES ('Foto', CURDATE(), CURDATE());

INSERT INTO media_types(name_media_type , created, modified)
VALUES ('Thumb', CURDATE(), CURDATE());

INSERT INTO media_types(name_media_type , created, modified)
VALUES ('Vídeo', CURDATE(), CURDATE());

# 14 registros na tabela "medias" ------------------------------------------------------

INSERT INTO medias (media_type_id, path, created, modified)
VALUES (1, '/cama/pic/pic1.jpg', CURDATE(), CURDATE());

INSERT INTO medias (media_type_id, path, created, modified)
VALUES (2, '/cama/vid/vid1.mp4', CURDATE(), CURDATE());

INSERT INTO medias (media_type_id, path, created, modified)
VALUES (3, '/cama/thumb/thumb1.jpg', CURDATE(), CURDATE());

INSERT INTO medias (media_type_id, path, created, modified)
VALUES (2, '/tenis/vid/vid1.mp4', CURDATE(), CURDATE());

INSERT INTO medias (media_type_id, path, created, modified)
VALUES (2, '/camisa/vid/vid1.mp4', CURDATE(), CURDATE());

INSERT INTO medias (media_type_id, path, created, modified)
VALUES (1, '/cama/pic/pic2.jpg', CURDATE(), CURDATE());

INSERT INTO medias (media_type_id, path, created, modified)
VALUES (1, '/tenis/pic/pic1.jpg', CURDATE(), CURDATE());

INSERT INTO medias (media_type_id, path, created, modified)
VALUES (1, '/camisa/pic/pic1.jpg', CURDATE(), CURDATE());

INSERT INTO medias (media_type_id, path, created, modified)
VALUES (3, '/camisa/thumb/thumb1.jpg', CURDATE(), CURDATE());

INSERT INTO medias (media_type_id, path, created, modified)
VALUES (3, '/camisa/thumb/thumb2.jpg', CURDATE(), CURDATE());

INSERT INTO medias (media_type_id, path, created, modified)
VALUES (2, '/tenis/vid/vid2.mp4', CURDATE(), CURDATE());

INSERT INTO medias (media_type_id, path, created, modified)
VALUES (1, '/tenis/pic/pic2.jpg', CURDATE(), CURDATE());

INSERT INTO medias (media_type_id, path, created, modified)
VALUES (3, '/tenis/thumb/thumb1.jpg', CURDATE(), CURDATE());

INSERT INTO medias (media_type_id, path, created, modified)
VALUES (1, '/tenis/pic/pic3.jpg', CURDATE(), CURDATE());

# 14 registros na tabela "products_media" ----------------------------------------------

INSERT INTO product_medias (product_id, media_id, created, modified)
VALUES (1, 1, CURDATE(), CURDATE());

INSERT INTO product_medias (product_id, media_id, created, modified)
VALUES (2, 2, CURDATE(), CURDATE());

INSERT INTO product_medias (product_id, media_id, created, modified)
VALUES (3, 3, CURDATE(), CURDATE());

INSERT INTO product_medias (product_id, media_id, created, modified)
VALUES (4, 4, CURDATE(), CURDATE());

INSERT INTO product_medias (product_id, media_id, created, modified)
VALUES (5, 5, CURDATE(), CURDATE());

INSERT INTO product_medias (product_id, media_id, created, modified)
VALUES (6, 6, CURDATE(), CURDATE());

INSERT INTO product_medias (product_id, media_id, created, modified)
VALUES (7, 7, CURDATE(), CURDATE());

INSERT INTO product_medias (product_id, media_id, created, modified)
VALUES (1, 8, CURDATE(), CURDATE());

INSERT INTO product_medias (product_id, media_id, created, modified)
VALUES (2, 9, CURDATE(), CURDATE());

INSERT INTO product_medias (product_id, media_id, created, modified)
VALUES (3, 10, CURDATE(), CURDATE());

INSERT INTO product_medias (product_id, media_id, created, modified)
VALUES (4, 11, CURDATE(), CURDATE());

INSERT INTO product_medias (product_id, media_id, created, modified)
VALUES (5, 12, CURDATE(), CURDATE());

INSERT INTO product_medias (product_id, media_id, created, modified)
VALUES (6, 13, CURDATE(), CURDATE());

INSERT INTO product_medias (product_id, media_id, created, modified)
VALUES (7, 14, CURDATE(), CURDATE());

# 5 registros na tabela "promotions" -------------------------------------------------

INSERT INTO promotions (promotion_name, duration, created, modified)
VALUES ('Promoção de férias', 5,CURDATE(), CURDATE());

INSERT INTO promotions (promotion_name, duration, created, modified)
VALUES ('Promoção de primavera', 7,CURDATE(), CURDATE());

INSERT INTO promotions (promotion_name, duration, created, modified)
VALUES ('Promoção de outono', 9,CURDATE(), CURDATE());

INSERT INTO promotions (promotion_name, duration, created, modified)
VALUES ('Promoção de verão', 2,CURDATE(), CURDATE());

INSERT INTO promotions (promotion_name, duration, created, modified)
VALUES ('Promoção de inverno', 14,CURDATE(), CURDATE());

# 8 registros na tabela "product_promotions" -----------------------------------------

INSERT INTO promotion_products (product_id, promotion_id, promotion_price, promotion_quantity, created, modified)
VALUES (1, 1, 10.50, 30, CURDATE(), CURDATE());

INSERT INTO promotion_products (product_id, promotion_id, promotion_price, promotion_quantity, created, modified)
VALUES (2, 2, 20.50, 30, CURDATE(), CURDATE());

INSERT INTO promotion_products (product_id, promotion_id, promotion_price, promotion_quantity, created, modified)
VALUES (3, 3, 20.50, 30, CURDATE(), CURDATE());

INSERT INTO promotion_products (product_id, promotion_id, promotion_price, promotion_quantity, created, modified)
VALUES (4, 4, 10.50, 30, CURDATE(), CURDATE());

INSERT INTO promotion_products (product_id, promotion_id, promotion_price, promotion_quantity, created, modified)
VALUES (5, 5, 20.50, 30, CURDATE(), CURDATE());

INSERT INTO promotion_products (product_id, promotion_id, promotion_price, promotion_quantity, created, modified)
VALUES (6, 1, 20.50, 30, CURDATE(), CURDATE());

INSERT INTO promotion_products (product_id, promotion_id, promotion_price, promotion_quantity, created, modified)
VALUES (7, 2, 10.50, 30, CURDATE(), CURDATE());

INSERT INTO promotion_products (product_id, promotion_id, promotion_price, promotion_quantity, created, modified)
VALUES (1, 3, 10.50, 30, CURDATE(), CURDATE());

# 2 registros na tabela "subscribers" -------------------------------------------------

INSERT INTO subscribers (email, created, modified)
VALUES ('ricardohenrique996@gmail.com', CURDATE(), CURDATE());

INSERT INTO subscribers (email, created, modified)
VALUES ('ricardohenrique1@outlook.com', CURDATE(), CURDATE());

# 2 registros na tabela "banner_types" -------------------------------------------------

INSERT INTO banner_types (type_name, created, modified)
VALUES ('Small-Banner', CURDATE(), CURDATE());

INSERT INTO banner_types (type_name, created, modified)
VALUES ('Full-Banner', CURDATE(), CURDATE());

# 9 registros na tabela "banners" ------------------------------------------------------

INSERT INTO banners (banner_type_id, user_id, banner_description, path_banner, url_redirect, created, modified)
VALUES (1, 1, 'Banner 1', 'mini-banners/mini-banner1.png', 'http://pt.stackoverflow.com/review', CURDATE(), CURDATE());

INSERT INTO banners (banner_type_id, user_id, banner_description, path_banner, url_redirect, created, modified)
VALUES (1, 2, 'Banner 2', 'mini-banners/mini-banner2.png', 'http://pt.stackoverflow.com/questions', CURDATE(), CURDATE());

INSERT INTO banners (banner_type_id, user_id, banner_description, path_banner, url_redirect, created, modified)
VALUES (1, 3, 'Banner 3', 'mini-banners/mini-banner3.png', 'http://pt.stackoverflow.com/tags', CURDATE(), CURDATE());

INSERT INTO banners (banner_type_id, user_id, banner_description, path_banner, url_redirect, created, modified)
VALUES (1, 4, 'Banner 4', 'mini-banners/mini-banner4.png', 'http://pt.stackoverflow.com/users', CURDATE(), CURDATE());

INSERT INTO banners (banner_type_id, user_id, banner_description, path_banner, url_redirect, created, modified)
VALUES (1, 5, 'Banner 5', 'mini-banners/mini-banner5.png', 'http://pt.stackoverflow.com/help/badges', CURDATE(), CURDATE());

INSERT INTO banners (banner_type_id, user_id, banner_description, path_banner, url_redirect, created, modified)
VALUES (1, 6, 'Banner 6', 'mini-banners/mini-banner6.png', 'http://pt.stackoverflow.com/unanswered', CURDATE(), CURDATE());

INSERT INTO banners (banner_type_id, user_id, banner_description, path_banner, url_redirect, created, modified)
VALUES (2, 7, 'Banner 7', 'full-banners/full-banner3.png', 'http://pt.stackoverflow.com/tour', CURDATE(), CURDATE());

INSERT INTO banners (banner_type_id, user_id, banner_description, path_banner, url_redirect, created, modified)
VALUES (2, 8, 'Banner 8', 'full-banners/full-banner4.png', 'http://pt.stackoverflow.com/help', CURDATE(), CURDATE());

INSERT INTO banners (banner_type_id, user_id, banner_description, path_banner, url_redirect, created, modified)
VALUES (2, 9, 'Banner 9', 'full-banners/full-banner5.png', 'http://meta.pt.stackoverflow.com/', CURDATE(), CURDATE());