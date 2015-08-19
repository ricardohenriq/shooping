# Com o "MySql Command Line Client" aberto: Cole o COMANDO ABAIXO e Tecle ENTER
# mysql -u shop -p
# source C:/xampp/htdocs/PROJETOS/Shopping/scriptsdb/RowsDB.sql;

USE shopping;

# 3 registros na tabela "user_types" -------------------------------------------------

INSERT INTO user_types (type_name, created, modified)
VALUES ('Comum', CURDATE(), CURDATE());

INSERT INTO user_types (type_name, created, modified)
VALUES ('Empresário', CURDATE(), CURDATE());

INSERT INTO user_types (type_name, created, modified)
VALUES ('Administrador', CURDATE(), CURDATE());

# 30 registros na tabela "users" -----------------------------------------------------

INSERT INTO users (email, password, username, user_type_id, created, modified)
VALUES ('jose@outlook.com', 'novembro', 'José Souza', 1, '2013-10-28 22:39:19', '2014-10-28 22:39:19');

INSERT INTO users (email, password, username, user_type_id, created, modified)
VALUES ('joao@gmail.com', '987654321', 'Joao Magalhães', 1, '2013-10-28 22:39:19', '2014-10-28 22:39:19');

INSERT INTO users (email, password, username, user_type_id, created, modified)
VALUES ('bruna@apple.com', '123456789', 'Bruna Andrade', 1, '2013-10-28 22:39:19', '2014-10-28 22:39:19');

INSERT INTO users (email, password, username, user_type_id, created, modified)
VALUES ('maria@hotmail.com', 'novembro', 'Maria das Graças', 1, '2013-10-28 22:39:19', '2014-10-28 22:39:19');

INSERT INTO users (email, password, username, user_type_id, created, modified)
VALUES ('joaquim@hotmail.com', 'dezembro', 'Joaquim Damasceno', 1, '2013-10-28 22:39:19', '2014-10-28 22:39:19');

INSERT INTO users (email, password, username, user_type_id, created, modified)
VALUES ('soares@hotmail.com', 'janeiro', 'Soares Siqueira', 1, '2013-10-28 22:39:19', '2014-10-28 22:39:19');

INSERT INTO users (email, password, username, user_type_id, created, modified)
VALUES ('ana@hotmail.com', 'agosto', 'Ana Maria', 1, '2014-10-28 22:39:19', '2015-03-28 22:39:19');

INSERT INTO users (email, password, username, user_type_id, created, modified)
VALUES ('camila@hotmail.com', 'julho', 'Camila Silva', 1, '2014-10-28 22:39:19', '2015-03-28 22:39:19');

INSERT INTO users (email, password, username, user_type_id, created, modified)
VALUES ('isabella@hotmail.com', 'junho', 'Isabela Silva', 1, '2014-10-28 22:39:19', '2015-03-28 22:39:19');

INSERT INTO users (email, password, username, user_type_id, created, modified)
VALUES ('isadora@hotmail.com', 'abril', 'Isadora Bulhões', 1, '2014-10-28 22:39:19', '2015-03-28 22:39:19');

INSERT INTO users (email, password, username, user_type_id, created, modified)
VALUES ('joana@hotmail.com', 'riodejaneiro', 'Joana Cardoso', 1, '2014-10-28 22:39:19', '2015-03-28 22:39:19');

INSERT INTO users (email, password, username, user_type_id, created, modified)
VALUES ('lurdes@hotmail.com', 'saopaulo', 'Lurdes Cardoso', 1, '2014-10-28 22:39:19', '2015-03-28 22:39:19');

INSERT INTO users (email, password, username, user_type_id, created, modified)
VALUES ('samela@hotmail.com', 'teresina', 'Samela Cardoso', 1, '2014-10-28 22:39:19', '2015-03-28 22:39:19');

INSERT INTO users (email, password, username, user_type_id, created, modified)
VALUES ('tamires@hotmail.com', 'paraguai', 'Tamires Andrade', 1, '2014-10-28 22:39:19', '2015-03-28 22:39:19');

INSERT INTO users (email, password, username, user_type_id, created, modified)
VALUES ('sandra@hotmail.com', 'argentina', 'Sandra Feitosa', 1, '2013-10-28 22:39:19', '2014-10-28 12:19:39');

INSERT INTO users (email, password, username, user_type_id, created, modified)
VALUES ('tatilla@hotmail.com', 'amazonas', 'Tatilla Amaral', 1, '2013-10-28 22:39:19', '2014-10-28 12:19:39');

INSERT INTO users (email, password, username, user_type_id, created, modified)
VALUES ('roseana@hotmail.com', 'salvador', 'Roseana Porto', 1, '2013-10-28 22:39:19', '2014-10-28 12:19:39');

INSERT INTO users (email, password, username, user_type_id, created, modified)
VALUES ('fernando@hotmail.com', 'cuiaba', 'Fernando Siqueira', 1, '2012-10-28 22:39:19', '2014-10-28 12:19:39');

INSERT INTO users (email, password, username, user_type_id, created, modified)
VALUES ('thiago@hotmail.com', 'matogrosso', 'Thiago Campos', 1, '2012-10-28 22:39:19', '2014-10-28 12:19:39');

INSERT INTO users (email, password, username, user_type_id, created, modified)
VALUES ('marcos@hotmail.com', 'goias', 'Marcos Andrade', 1, '2012-10-28 22:39:19', '2013-10-28 12:19:39');

INSERT INTO users (email, password, username, user_type_id, created, modified)
VALUES ('frederico@hotmail.com', 'roraima', 'Frederico Teixera', 1, '2012-10-28 22:39:19', '2013-10-28 12:19:39');

INSERT INTO users (email, password, username, user_type_id, created, modified)
VALUES ('pedro@hotmail.com', 'acre', 'Pedro Borges', 3, '2011-10-28 22:39:19', '2013-10-28 12:19:39');

INSERT INTO users (email, password, username, user_type_id, created, modified)
VALUES ('candido@hotmail.com', 'brasil', 'Candido Cardoso', 3, '2011-10-28 22:39:19', '2013-10-28 12:19:39');

INSERT INTO users (email, password, username, user_type_id, created, modified)
VALUES ('davi@hotmail.com', 'bahia', 'Davi Costa', 3, '2011-10-28 22:39:19', '2013-10-28 12:19:39');

INSERT INTO users (email, password, username, user_type_id, created, modified)
VALUES ('renan@hotmail.com', 'fortaleza', 'Renan Rossi', 2, NOW(), NOW());

INSERT INTO users (email, password, username, user_type_id, created, modified)
VALUES ('joelma@hotmail.com', 'acre', 'Joelma Brito', 2, NOW(), NOW());

INSERT INTO users (email, password, username, user_type_id, created, modified)
VALUES ('geovana@hotmail.com', 'rondonia', 'Geovana Souza', 2, NOW(), NOW());

INSERT INTO users (email, password, username, user_type_id, created, modified)
VALUES ('mirtes@hotmail.com', 'parana', 'Mirtes Fonseca', 2, NOW(), NOW());

INSERT INTO users (email, password, username, user_type_id, created, modified)
VALUES ('mirela@hotmail.com', 'cimento', 'Mirela Barbosa', 2, NOW(), NOW());

INSERT INTO users (email, password, username, user_type_id, created, modified)
VALUES ('milena@hotmail.com', 'tocantins', 'Milena Carvalho', 2, NOW(), NOW());

# INSERT INTO users (email, password, username, user_type_id, created, modified)
# VALUES ('silva@hotmail.com', 'silva', 'Silva', 1, NOW(), NOW());

# INSERT INTO users (email, password, username, user_type_id, created, modified)
# VALUES ('santos@hotmail.com', 'santos', 'Santos', 2, NOW(), NOW());

# INSERT INTO users (email, password, username, user_type_id, created, modified)
# VALUES ('abravanel@hotmail.com', 'abravanel', 'Abravanel', 3, NOW(), NOW());

# 9 registros na tabela "stores" --------------------------------------------------

INSERT INTO stores (store_name, user_id, created, modified)
VALUES ('Loja A', 25, '2011-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO stores (store_name, user_id, created, modified)
VALUES ('Loja B', 26, '2011-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO stores (store_name, user_id, created, modified)
VALUES ('Loja C', 27, '2011-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO stores (store_name, user_id, created, modified)
VALUES ('Loja D', 27, NOW(), NOW());

INSERT INTO stores (store_name, user_id, created, modified)
VALUES ('Loja E', 28, '2012-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO stores (store_name, user_id, created, modified)
VALUES ('Loja F', 28, '2012-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO stores (store_name, user_id, created, modified)
VALUES ('Loja G', 29, '2012-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO stores (store_name, user_id, created, modified)
VALUES ('Loja H', 30, NOW(), NOW());

INSERT INTO stores (store_name, user_id, created, modified)
VALUES ('Loja I', 30, NOW(), NOW());

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
VALUES ('Jóias e Relógios', CURDATE(), CURDATE());

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
VALUES ('Foto Principal', CURDATE(), CURDATE());

INSERT INTO media_types(name_media_type , created, modified)
VALUES ('Thumb', CURDATE(), CURDATE());

INSERT INTO media_types(name_media_type , created, modified)
VALUES ('Video', CURDATE(), CURDATE());

#  registros na tabela "medias" ------------------------------------------------------

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 1, 'http://localhost/PROJETOS/ShoppingResources/img/1/Samsung-Galaxy-A5-Duos-Branco-4G-Orange-1.jpg', CURDATE(), CURDATE());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 1, 'http://localhost/PROJETOS/ShoppingResources/thumb/1/Samsung-Galaxy-A5-Duos-Branco-4G-Orange-1.jpg', CURDATE(), CURDATE());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 1, 'http://localhost/PROJETOS/ShoppingResources/img/1/Samsung-Galaxy-A5-Duos-Branco-4G-Orange-2.jpg', CURDATE(), CURDATE());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 1, 'http://localhost/PROJETOS/ShoppingResources/img/1/Samsung-Galaxy-A5-Duos-Branco-4G-Orange-3.jpg', CURDATE(), CURDATE());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 2, 'http://localhost/PROJETOS/ShoppingResources/img/2/TV-LED-32-Smart-LiteUSB-HDMI-LE-3278i-Semp-Toshiba-1.jpg', CURDATE(), CURDATE());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 2, 'http://localhost/PROJETOS/ShoppingResources/thumb/2/TV-LED-32-Smart-LiteUSB-HDMI-LE-3278i-Semp-Toshiba-1.jpg', CURDATE(), CURDATE());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 2, 'http://localhost/PROJETOS/ShoppingResources/img/2/TV-LED-32-Smart-LiteUSB-HDMI-LE-3278i-Semp-Toshiba-2.jpg', CURDATE(), CURDATE());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 3, 'http://localhost/PROJETOS/ShoppingResources/img/3/Motorola-Moto-X-Android-42-GPS-3G-2-Chips-13GHZ-1.jpg', CURDATE(), CURDATE());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 3, 'http://localhost/PROJETOS/ShoppingResources/img/3/Motorola-Moto-X-Android-42-GPS-3G-2-Chips-13GHZ-1.jpg', CURDATE(), CURDATE());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 3, 'http://localhost/PROJETOS/ShoppingResources/img/3/Motorola-Moto-X-Android-42-GPS-3G-2-Chips-13GHZ-2.jpg', CURDATE(), CURDATE());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 3, 'http://localhost/PROJETOS/ShoppingResources/img/3/Motorola-Moto-X-Android-42-GPS-3G-2-Chips-13GHZ-3.jpg', CURDATE(), CURDATE());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 3, 'http://localhost/PROJETOS/ShoppingResources/img/3/Motorola-Moto-X-Android-42-GPS-3G-2-Chips-13GHZ-4.jpg', CURDATE(), CURDATE());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 3, 'http://localhost/PROJETOS/ShoppingResources/img/3/Motorola-Moto-X-Android-42-GPS-3G-2-Chips-13GHZ-5.jpg', CURDATE(), CURDATE());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 4, 'http://localhost/PROJETOS/ShoppingResources/img/4/Liquidificador-e-Processador-Reverse-Red-Oster-110V-1.jpg', CURDATE(), CURDATE());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 4, 'http://localhost/PROJETOS/ShoppingResources/img/4/Liquidificador-e-Processador-Reverse-Red-Oster-110V-1.jpg', CURDATE(), CURDATE());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 4, 'http://localhost/PROJETOS/ShoppingResources/img/4/Liquidificador-e-Processador-Reverse-Red-Oster-110V-2.jpg', CURDATE(), CURDATE());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 4, 'http://localhost/PROJETOS/ShoppingResources/img/4/Liquidificador-e-Processador-Reverse-Red-Oster-110V-3.jpg', CURDATE(), CURDATE());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 4, 'http://localhost/PROJETOS/ShoppingResources/img/4/Liquidificador-e-Processador-Reverse-Red-Oster-110V-4.jpg', CURDATE(), CURDATE());

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

# 9 registros na tabela "new_banners" -------------------------------------------------

INSERT INTO new_banners (user_id, name, description, path_banner, date_start, date_end, created, modified)
VALUES (1, 'Banner 1', 'Noticia Fantastica', 'news/new1.png', CURDATE(), '2019-11-11', CURDATE(), CURDATE());

INSERT INTO new_banners (user_id, name, description, path_banner, date_start, date_end, created, modified)
VALUES (2, 'Banner 2', 'Noticia Boa', 'news/new2.png', CURDATE(), '2019-11-11', CURDATE(), CURDATE());

INSERT INTO new_banners (user_id, name, description, path_banner, date_start, date_end, created, modified)
VALUES (3, 'Banner 3', 'Noticia Muito Boa', 'news/new3.png', CURDATE(), '2019-11-11', CURDATE(), CURDATE());

INSERT INTO new_banners (user_id, name, description, path_banner, date_start, date_end, created, modified)
VALUES (4, 'Banner 4', 'Noticia Melhor', 'news/new4.png', CURDATE(), '2019-11-11', CURDATE(), CURDATE());

INSERT INTO new_banners (user_id, name, description, path_banner, date_start, date_end, created, modified)
VALUES (5, 'Banner 5', 'Noticia Top', 'news/new1.png', CURDATE(), '2019-11-11', CURDATE(), CURDATE());

INSERT INTO new_banners (user_id, name, description, path_banner, date_start, date_end, created, modified)
VALUES (6, 'Banner 6', 'Noticia Otima', 'news/new2.png', CURDATE(), '2019-11-11', CURDATE(), CURDATE());

INSERT INTO new_banners (user_id, name, description, path_banner, date_start, date_end, created, modified)
VALUES (7, 'Banner 7', 'Noticia Excelente', 'news/new3.png', CURDATE(), '2019-11-11', CURDATE(), CURDATE());

INSERT INTO new_banners (user_id, name, description, path_banner, date_start, date_end, created, modified)
VALUES (8, 'Banner 8', 'Noticia Perfeita', 'news/new4.png', CURDATE(), '2019-11-11', CURDATE(), CURDATE());

INSERT INTO new_banners (user_id, name, description, path_banner, date_start, date_end, created, modified)
VALUES (9, 'Banner 9', 'Noticia Boa Dimais da Conta', 'news/new1.png', CURDATE(), '2019-11-11', CURDATE(), CURDATE());

# 9 registros na tabela "offer_banners" -----------------------------------------------

INSERT INTO offer_banners (user_id, name, description, path_banner, date_start, date_end, created, modified)
VALUES (1, 'Oferta 1', 'Oferta Boa', 'offers/offer1.png', CURDATE(), '2019-11-11', CURDATE(), CURDATE());

INSERT INTO offer_banners (user_id, name, description, path_banner, date_start, date_end, created, modified)
VALUES (2, 'Oferta 2', 'Oferta Muito Boa', 'offers/offer2.png', CURDATE(), '2019-11-11', CURDATE(), CURDATE());

INSERT INTO offer_banners (user_id, name, description, path_banner, date_start, date_end, created, modified)
VALUES (3, 'Oferta 3', 'Oferta Boa Dimais Da conta Sô', 'offers/offer3.png', CURDATE(), '2019-11-11', CURDATE(), CURDATE());

INSERT INTO offer_banners (user_id, name, description, path_banner, date_start, date_end, created, modified)
VALUES (4, 'Oferta 4', 'Oferta Excelente', 'offers/offer4.png', CURDATE(), '2019-11-11', CURDATE(), CURDATE());

INSERT INTO offer_banners (user_id, name, description, path_banner, date_start, date_end, created, modified)
VALUES (5, 'Oferta 5', 'Oferta Otima', 'offers/offer5.png', CURDATE(), '2019-11-11', CURDATE(), CURDATE());

INSERT INTO offer_banners (user_id, name, description, path_banner, date_start, date_end, created, modified)
VALUES (6, 'Oferta 6', 'Oferta Razoavel', 'offers/offer6.png', CURDATE(), '2019-11-11', CURDATE(), CURDATE());

INSERT INTO offer_banners (user_id, name, description, path_banner, date_start, date_end, created, modified)
VALUES (7, 'Oferta 7', 'Oferta Regular', 'offers/offer1.png', CURDATE(), '2019-11-11', CURDATE(), CURDATE());

INSERT INTO offer_banners (user_id, name, description, path_banner, date_start, date_end, created, modified)
VALUES (8, 'Oferta 8', 'Oferta Bacana', 'offers/offer2.png', CURDATE(), '2019-11-11', CURDATE(), CURDATE());

INSERT INTO offer_banners (user_id, name, description, path_banner, date_start, date_end, created, modified)
VALUES (9, 'Oferta 9', 'Oferta Fulera', 'offers/offer3.png', CURDATE(), '2019-11-11', CURDATE(), CURDATE());