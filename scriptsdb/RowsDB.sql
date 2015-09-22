# Com o "MySql Command Line Client" aberto: Cole o COMANDO ABAIXO e Tecle ENTER
# mysql -u shop -p
# source C:/xampp/htdocs/PROJETOS/Shopping/scriptsdb/RowsDB.sql;

USE shopping;

## 3 registros na tabela "user_types" -------------------------------------------------

INSERT INTO user_types (type_name, created, modified)
VALUES ('Comum', NOW(), NOW());

INSERT INTO user_types (type_name, created, modified)
VALUES ('Empresário', NOW(), NOW());

INSERT INTO user_types (type_name, created, modified)
VALUES ('Administrador', NOW(), NOW());

## 30 registros na tabela "users" -----------------------------------------------------

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

## 9 registros na tabela "stores" --------------------------------------------------

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

## 21 regsistros na tabela "categories" ------------------------------------------------

INSERT INTO categories (id, category_name, created, modified)
VALUES (1, 'Alimentos', '2010-10-28 09:39:49', '2011-10-28 22:39:19');

INSERT INTO categories (id, category_name, created, modified)
VALUES (2, 'Bebidas', '2010-10-28 09:39:49', '2011-10-28 22:39:19');

INSERT INTO categories (id, category_name, created, modified)
VALUES (3, 'Móveis', '2010-10-28 09:39:49', '2011-10-28 22:39:19');

INSERT INTO categories (id, category_name, created, modified)
VALUES (4, 'Utensilios de Cozinha', '2010-10-28 09:39:49', '2011-10-28 22:39:19');

INSERT INTO categories (id, category_name, created, modified)
VALUES (5, 'Utensilios de Banheiro', '2010-10-28 09:39:49', '2011-10-28 22:39:19');

INSERT INTO categories (id, category_name, created, modified)
VALUES (6, 'Utensilios de Limpeza', '2010-10-28 09:39:49', '2011-10-28 22:39:19');

INSERT INTO categories (id, category_name, created, modified)
VALUES (7, 'Utensilios de Mesa', '2010-10-28 09:39:49', '2011-10-28 22:39:19');

INSERT INTO categories (id, category_name, created, modified)
VALUES (8, 'Organizadores', '2010-10-28 09:39:49', '2011-10-28 22:39:19');

INSERT INTO categories (id, category_name, created, modified)
VALUES (9, 'Eletrodomesticos', '2010-10-28 09:39:49', '2011-10-28 22:39:19');

INSERT INTO categories (id, category_name, created, modified)
VALUES (10, 'Cama, Mesa e Banho', '2011-10-28 09:39:49', '2012-10-28 22:39:19');

INSERT INTO categories (id, category_name, created, modified)
VALUES (11, 'Livros', '2011-10-28 09:39:49', '2012-10-28 22:39:19');

INSERT INTO categories (id, category_name, created, modified)
VALUES (12, 'Eletroeletronicos', '2011-10-28 09:39:49', '2012-10-28 22:39:19');

INSERT INTO categories (id, category_name, created, modified)
VALUES (13, 'Portáteis', '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO categories (id, category_name, created, modified)
VALUES (14, 'Informática', '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO categories (id, category_name, created, modified)
VALUES (15, 'Brinquedos', '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO categories (id, category_name, created, modified)
VALUES (16, 'Automotivo', '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO categories (id, category_name, created, modified)
VALUES (17, 'Ferramentas', '2014-10-28 09:39:49', '2016-10-28 22:39:19');

INSERT INTO categories (id, category_name, created, modified)
VALUES (18, 'Vestuário', '2014-10-28 09:39:49', '2016-10-28 22:39:19');

INSERT INTO categories (id, category_name, created, modified)
VALUES (19, 'Calçados', NOW(), NOW());

INSERT INTO categories (id, category_name, created, modified)
VALUES (20, 'Acessórios', NOW(), NOW());

INSERT INTO categories (id, category_name, created, modified)
VALUES (21, 'Escritório', NOW(), NOW());

INSERT INTO categories (id, category_name, created, modified)
VALUES (22, 'Outros', NOW(), NOW());

## 157 registros na tabela "sub_categories" ---------------------------------------------

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (1, 'Industrilizado', 1, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (2, 'In natura', 1, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (3, 'Comida pronta', 1, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (4, 'Desidratado', 1, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (5, 'Organico', 1, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (6, 'Raizes', 1, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (7, 'Doces', 1, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (8, 'Alcoolica', 2, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (9, 'Sucos', 2, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (10, 'Refrigerante', 2, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (11, 'Sofás', 3, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (12, 'Guarda-Roupas', 3, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (13, 'Poltronas', 3, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (14, 'Cadeiras, Bancos e Banquetas', 3, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (15, 'Racks, Pinéis e Estantes', 3, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (16, 'Cômodas e Sapateiras', 3, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (17, 'Mesas', 3, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (18, 'Camas', 3, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (19, 'Colchões', 3, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (20, 'Armários', 3, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (21, 'Panelas', 4, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (22, 'Filtros', 4, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (23, 'Formas', 4, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (24, 'Potes', 4, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (25, 'Tábuas', 4, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (26, 'Chaleiras', 4, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (27, 'Acessórios', 4, '2009-10-28 09:39:49', '2010-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (28, 'Porta Algodões', 5, '2009-10-28 09:39:49', '2010-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (29, 'Porta Papel Higienico', 5, '2009-10-28 09:39:49', '2010-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (30, 'Porta Cotonetes', 5, '2009-10-28 09:39:49', '2010-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (31, 'Kit Banheiro', 5, '2009-10-28 09:39:49', '2010-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (32, 'Saboneteiras', 5, '2009-10-28 09:39:49', '2010-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (33, 'Escadas', 6, '2009-10-28 09:39:49', '2010-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (34, 'Lixeiras', 6, '2009-10-28 09:39:49', '2010-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (35, 'Rodos', 6, '2009-10-28 09:39:49', '2010-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (36, 'Tábuas de Passar', 6, '2009-10-28 09:39:49', '2010-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (37, 'Varais e Acessórios', 6, '2009-10-28 09:39:49', '2010-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (38, 'Mangueiras e Acessórios', 6, '2009-10-28 09:39:49', '2010-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (39, 'Copos', 7, '2009-10-28 09:39:49', '2010-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (40, 'Taças', 7, '2009-10-28 09:39:49', '2010-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (41, 'Jarras', 7, '2009-10-28 09:39:49', '2010-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (42, 'Facas', 7, '2009-10-28 09:39:49', '2010-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (43, 'Faqueiros', 7, '2009-10-28 09:39:49', '2010-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (44, 'Talheres', 7, '2009-10-28 09:39:49', '2010-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (45, 'Bandejas', 7, '2009-10-28 09:39:49', '2010-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (46, 'Xícaras', 7, '2009-10-28 09:39:49', '2010-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (47, 'Garrafas Termicas', 7, '2009-10-28 09:39:49', '2010-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (48, 'Bandeijas', 7, '2010-10-28 09:39:49', '2011-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (49, 'Boleiras', 7, '2010-10-28 09:39:49', '2011-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (50, 'Acessórios para Bar', 7, '2010-10-28 09:39:49', '2011-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (51, 'Cabides de Armário', 8, '2010-10-28 09:39:49', '2011-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (52, 'Suporte de Parede', 8, '2010-10-28 09:39:49', '2011-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (53, 'Caixas', 8, '2010-10-28 09:39:49', '2011-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (54, 'Módulos e Prateleiras', 8, '2010-10-28 09:39:49', '2011-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (55, 'Revisteiros', 8, '2010-10-28 09:39:49', '2011-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (56, 'Organizadores de Fios', 8, '2010-10-28 09:39:49', '2011-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (57, 'Geladeira', 9, '2010-10-28 09:39:49', '2011-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (58, 'Freezer', 9, '2010-10-28 09:39:49', '2011-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (59, 'Fogão', 9, '2011-10-28 09:39:49', '2012-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (60, 'Micro-ondas', 9, '2011-10-28 09:39:49', '2012-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (61, 'Lavadoura de Roupas', 9, '2011-10-28 09:39:49', '2012-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (62, 'Lavadoura de Louças', 9, '2011-10-28 09:39:49', '2012-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (63, 'Secadora de Roupas', 9, '2011-10-28 09:39:49', '2012-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (64, 'Arcondicinado', 9, '2011-10-28 09:39:49', '2012-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (65, 'Ventilador', 9, '2011-10-28 09:39:49', '2012-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (66, 'Jogo de Leçol', 10, '2011-10-28 09:39:49', '2012-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (67, 'Colcha', 10, '2011-10-28 09:39:49', '2012-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (68, 'Edredom', 10, '2011-10-28 09:39:49', '2012-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (69, 'Travesseiro', 10, '2011-10-28 09:39:49', '2012-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (70, 'Almofada', 10, '2011-10-28 09:39:49', '2012-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (71, 'Toalha de Banho', 10, '2011-10-28 09:39:49', '2012-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (72, 'Toalha de Rosto', 10, '2011-10-28 09:39:49', '2012-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (73, 'Roupão', 10, '2011-10-28 09:39:49', '2012-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (74, 'Pano de Prato', 10, '2011-10-28 09:39:49', '2012-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (75, 'Jogo Americano', 10, '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (76, 'Avental', 10, '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (77, 'Toalha de Mesa', 10, '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (78, 'Infantil', 11, '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (79, 'Administração e Negócios', 11, '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (80, 'Direito', 11, '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (81, 'Auto-ajuda', 11, '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (82, 'Romance', 11, '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (83, 'Fantasia', 11, '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (84, 'Ficção Cientifica', 11, '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (85, 'Informática', 11, '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (86, 'Saúde', 11, '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (87, 'Poesia', 11, '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (88, 'Biografias', 11, '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (89, 'HDTV', 12, '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (90, 'Home Teather', 12, '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (91, 'DVD e Bluray', 12, '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (92, 'Mini/Micro System', 12, '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (93, 'Celular', 13, '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (94, 'Smartphone', 13, '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (95, 'Tablet', 13, '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (96, 'Telefone', 13, '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (97, 'Notebook', 14, '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (98, 'PC', 14, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (99, 'HD Externo', 14, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (100, 'Roteador', 14, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (101, 'Pen Drive', 14, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (102, 'Blocos de Montar', 15, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (103, 'Bonecos', 15, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (104, 'Bonecas', 15, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (105, 'Cadeiras, Mesinhas, Baús e Porta Objetos', 15, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (106, 'Carros, Trens e Aviões', 15, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (107, 'Desenhos e Pintura', 15, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (108, 'Instrumentos Musicais', 15, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (109, 'Jogos', 15, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (110, 'Playgrounds e Casinhas', 15, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (111, 'Praia, Lazer e Esportes', 15, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (112, 'Massas de Modelar', 15, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (113, 'Primeira Infância', 15, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (114, 'Auto Som', 16, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (115, 'Pneu', 16, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (116, 'Óleo', 16, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (117, 'GPS Automotivo', 16, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (118, 'DVD Automotivo', 16, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (119, 'Auto Falantes', 16, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (120, 'Calotas', 16, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (121, 'Capacete', 16, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (122, 'Acessórios', 16, '2014-10-28 09:39:49', '2015-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (123, 'Higienização e Polimento', 16, '2014-10-28 09:39:49', '2015-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (124, 'Ferramentas Manuais', 17, '2014-10-28 09:39:49', '2015-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (125, 'Aparadores de Grama', 17, '2014-10-28 09:39:49', '2015-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (126, 'Cortadores de Grama', 17, '2014-10-28 09:39:49', '2015-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (127, 'Sopradores de Folhas', 17, '2014-10-28 09:39:49', '2015-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (128, 'Furadeira', 17, '2014-10-28 09:39:49', '2015-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (129, 'Parafusadeira', 17, '2014-10-28 09:39:49', '2015-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (130, 'Serra Circular', 17, '2014-10-28 09:39:49', '2015-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (131, 'Plaina', 17, '2014-10-28 09:39:49', '2015-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (132, 'Esmerilhadeira e Esmeril', 17, '2014-10-28 09:39:49', '2015-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (133, 'Mini Retifica', 17, '2014-10-28 09:39:49', '2015-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (134, 'Acessórios de Pintura', 17, '2014-10-28 09:39:49', '2015-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (135, 'Bonés', 18, '2014-10-28 09:39:49', '2015-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (136, 'Chapéus', 18, '2014-10-28 09:39:49', '2015-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (137, 'Camisa', 18, '2014-10-28 09:39:49', '2015-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (138, 'Camiseta', 18, '2014-10-28 09:39:49', '2015-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (139, 'Cinto', 18, '2014-10-28 09:39:49', '2015-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (140, 'Calça', 18, '2014-10-28 09:39:49', '2015-10-28 22:39:19');

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (141, 'Casacos e Jaquetas', 18, '2010-10-28 09:39:49', NOW());

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (142, 'Praia', 18, '2010-10-28 09:39:49', NOW());

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (143, 'Tênis', 19, '2010-10-28 09:39:49', NOW());

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (144, 'Sapatênis', 19, '2010-10-28 09:39:49', NOW());

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (145, 'Sapato', 19, '2010-10-28 09:39:49', NOW());

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (146, 'Chinela', 19, '2010-10-28 09:39:49', NOW());

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (147, 'Botas', 19, '2010-10-28 09:39:49', NOW());

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (148, 'Relógios', 20, '2010-10-28 09:39:49', NOW());

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (149, 'Pulseiras', 20, '2010-10-28 09:39:49', NOW());

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (150, 'Brincos', 20, '2010-10-28 09:39:49', NOW());

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (151, 'Colares', 20, '2010-10-28 09:39:49', NOW());

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (152, 'Multifuncional', 21, '2010-10-28 09:39:49', NOW());

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (153, 'Fax', 21, NOW(), NOW());

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (154, 'Papéis', 21, NOW(), NOW());

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (155, 'Tonners e Tintas', 21, NOW(), NOW());

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (156, 'Gaveteiro', 22, NOW(), NOW());

INSERT INTO sub_categories (id, sub_category_name, category_id, created, modified)
VALUES (157, 'Estações de Trabalho', 22, NOW(), NOW());

## 68 registros na tabela "products" --------------------------------------------------

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (1, 'Samsung Galaxy A5 Duos Branco 4G Orange', 1, 94, 20, 40,
        'Equipado com câmera frontal de 5 megapixel o Samsung Galaxy A5 4G Duos é um aparelho capaz de fazer Selfies incríveis e com uma excelente
        qualidade graças aos seus novos recursos. Agora você pode enquadrar todos os seus amigos em uma única foto com a função Selfie Panorâmica
        que captura um ângulo de até 120° do conteúdo.
        O Galaxy A5 equilibra desempenho em um design interessante com estrutura metálica e acabamento de alta qualidade, ideal para quem procura
        estilo e sofisticação. Sua tela de 5 polegadas conta também com tecnologia Super Amoled que fornece alto brilho, cores realistas e economia
        de energia.
        O Galaxy A5 é tudo o que você precisa para facilitar o seu dia a dia, com suporte para dois chips você não precisa mais carregar dois aparelhos,
        é só escolher com qual chip vai usar a rede de dados e qual será para fazer ligações.
        Um smartphone com tantos recursos deve consumir muita energia, pensando nisso a Samsung desenvolveu o Galaxy A5 com o modo de Ultra Economia de
        Energia que reduz drasticamente o consumo de bateria mantendo as funções essenciais e garantindo que seu telefone esteja disponível quando você
        realmente precisar dele.',
        550.50, 400, 777, 1, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (2, 'TV LED 32 Smart LiteUSB HDMI LE 3278i Semp Toshiba', 2, 89, 300, 200,
        'Agora é possível guardar os bons momentos, um bom conteúdo de programação, um filme, o capítulo da novela, aquele documentário, a final do
        campeonato com o gravador pessoal de vídeo PVR Ready. Você pode usar um HD externo ou um pen drive para gravar todo conteúdo digital da TV
        aberta.
        Sua Smart TV LITE é mais experiência online, praticidade e diversão. Conecte-se ao Youtube, Facebook, Flickr e acesse a internet via Browser,
        além de todo entretenimento que você espera de uma TV.
        Conecte seu pen drive, assista filmes e vídeos, veja fotos e ouça músicas. Toda a tecnologia de som e imagem que você usa, conectada em um
        só equipamento. São diferentes entradas como USB, HDMI para áudio e vídeo digital, áudio e vídeo composto e componente, porta LAN para
        interatividade DTVi e internet, Wireless Lan Ready acesso sem fi o com adaptador Wi-Fi opcional (vendido separadamente).
        A TV aberta chega à sua casa com qualidade de som e imagem digital e o decodificador digital DTVi permite sua interatividade com a programação,
        caso a emissora disponibilize esse acesso.',
        20.20, 25, 555, 2, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (3, 'Motorola Moto X Android 42 GPS 3G 2 Chips 13GHZ', 3, 94, 150, 900,
        'Este é o novo Motorola Moto X 2ª Geração! Um Smartphone que é puro estilo e pura performance. Ele possui um design moderno e fino, com
        acabamento metálico na borda, feito com materiais nobres, perfeito para quem tem estilo e gosta sempre de inovar.
        Sua super tela Full HD de 5,2" AMOLED Gorilla Glass 3 Dual Touch possui uma imagem incrível com alto nível de nitidez. Além disso, ele
        conta com o mais recente sistema operacional Android 4.4.4 KitKat e processador Quad-Core Snapdragon de 2.5 GHz para o melhor desempenho.
        Com o excelente recurso de notificações e configurações, que se adequam a você — seja em casa, no trabalho ou enquanto estiver dirigindo,
        você terá mais comodidade e praticidade para fazer suas atividades diárias sem incômodos ou constrangimento. E ainda, comando de voz,
        para que faça ainda mais com sua voz, como procurar um vídeo ou abrir a câmera sem tocar no aparelho. Basta falar.
        Single Chip, possui uma fantástica câmera integrada de 13 MP com flash LED Duplo e foco automático, e câmera frontal de 2 MP. Ambas, lhe
        permitem tirar excelentes fotos, realizar vídeos chamadas e até, gravar altos vídeos Ultra HD (2160p).
        São muitos benefícios unidos em um único aparelho, que vai deixá-lo antenado com tudo o que acontece nas redes virtuais, internet, blogs
        e muito mais.
        É modernidade, tecnologia e interação, em um aparelho criado especialmente para você!',
        15, 12.90, 444, 1, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (4, 'Liquidificador e Processador Reverse Red Oster 110V', 4, 47, 30, 60,
        'Liquidificador Delighter Oster. Possui potente motor reversível de 450 watts com 6 velocidades e funções pré-programadas para preparar
        coquetéis e batidas. Tem ainda jarra de vidro de 1,75 litros, a prova de choque térmico, com design fino que cabe na porta da geladeira.
        Pode ser lavada na lava-louças, tem tampa de bico acentuado e dobradiça para facilitar ao servir, lâmina removível de aço inoxidável ideal
        para triturar frutas congeladas e gelo para batidas, jarra que encaixa facilmente na base permitindo o manuseio com apenas uma mão, painel
        de controle de toque suave, simples e fácil de usar.',
        150.90, 140, 333, 2, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (5, 'MP3 Player Shuffle Clip FM Cabo USB Fone Suporta ate 8G', 1, 94, 900, 1200,
        'Controle suas músicas com um clique.
        Com o painel frontal do iPod shuffle, é mais fácil controlar as suas músicas. Pressione para reproduzir, pausar, avançar ou voltar. Clique
        onde quiser. O seu dedo está no comando.
        Escute do seu jeito.
        Talvez você seja do tipo espontâneo. Ou prefira um pouco de ordem. Mova o botão de acordo com o seu estilo. Deslize para a esquerda para
        ouvir suas músicas em ordem aleatória. Toque no meio para escutar as músicas em ordem.',
        5, 9.05, 222, 1, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (6, 'Fone de Ouvido com MP3 Player C2 Sport Entrada Cartao SD Micro', 2, 94, 130, 200,
        'Fone sem fio com entrada para Cartão Micro SD igual ao usado para memória de celular, basta conectar o cartão com suas músicas preferidas
        e sair praticando o seu esporte predileto. Não é necessário nenhum acessório ou cabo. Mais mobilidade e liberdade para ir onde desejar Não
        se incomode com fios ou aparelhos. Detalhes ? Para carregar basta conectar o cabo USB ao seu aparelho, Mobilidade e prazer ao praticar o
        seu esporte preferido, e para momentos de descontração. MP3 Portátil em Formato de Fone de Ouvido Sem Fio Cabo USB 2.0 Conteúdo da caixa?
        1 Fone De Ouvido Sem Fio C2 Sport Mp3 Player Entrada Cartão Sd ? preto + Cabo USB Especificações técnicas ? Formatos de áudio: Mp3 , WMA,
        WAV Cartão Micro SD (Não Acompanha) Ruído: 86dB Frequência: 20HZ / 20KHZ Bateria: LiPo battery',
        13.99, 20.00, 99, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (7, 'Bi Cama 0735 Branco Brilho Multimoveis Bebe Store', 3, 18, 200, 400,
        'Bicama mista, MDP/MDF, 15mm com pintura UV alto brilho.
         Todas as características de fabricação garantem um produto de qualidade comprovada, que combina tradição e modernidade de uma marca
         verdadeiramente conceituada neste segmento.',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (8, 'Jogo de Mesa com 4 Cadeiras Tampo de Vidro Temperado Incolor', 3, 17, 200, 400,
        'Jogo de Mesa de Cozinha com 4 Cadeiras Tulipa com Tampo de Vidro Temperado Incolor, estrutura em aço carbono, acabamento em pintura epóxi,
        assentos em MDP de 12 mm com revestimento de espuma e corino.',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (9, 'Cesta Basica de Alimentos Popular', 3, 1, 200, 400,
        'A Cesta Básica para Doação - Good Cestas, foi elaborada para atender de forma rápida, a demanda de compra dos seus clientes. Os seus
        produtos são de alta qualidade e de origem comprovada.',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (10, 'Balas Alemas Fruit Candies', 3, 7, 200, 400,
        'BALAS ALEMÃS,UM PRODUTO COM GOSTINHO DIFERENTE UMA DELÍCIA, ALEM DE SER GOSTOSAS É UMA DECORAÇÃO PARA SUA CASA, PRODUTO LACRADO, COM PRAZO
        DE VALIDADE DE 3  ANOS, COM BALAS MISTAS SABORES, LARANJA, MORANGO, LIMÃO, FRAMBOESA, ABACAXI.',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (11, 'Kit Brigadeiro Premium Festa Infantil 100 Unidades', 3, 7, 200, 400,
        'TODOS OS NOSSOS DOCINHOS SÃO FEITOS COM LEITE CONDENSADO E CHOCOLATE DE PRIMEIRA LINHA.
        Nosso prazo de produção é de 2 dias úteis.',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (12, 'Tamarillo Tomate de Arvore Gigante Sementes Fruta para Mudas', 3, 2, 200, 400,
        'O Tamarilho por vezes escrito tamarillo, tomate-japonês, tomate-maracujá, tomate-inglês ou tomate-arbóreo, é o fruto da espécie Solanum
        betaceum, (Sinônimo Cyphomandra betacea), pertencente à família Solanaceae.
        Nativa dos Andes na América do Sul, é rica em vitamina A, sendo indicada para controlar o colesterol. É apreciada ao natural e seu sabor
        agridoce também pode ser explorado com sucesso no preparo de sucos, geleias ou compotas, salada de frutas e molhos para acompanhar carnes.
        É comercialmente cultivada na Nova Zelândia, Califórnia e Portugal. No Brasil, a fruta é cultivada em quintais, principalmente nos estados
        da Bahia, de Minas Gerais e de São Paulo. Na Bahia recebe o nome de "tomatão" e em São Paulo de "tomate-francês". Na região sul de Minas
        Gerais é popularmente conhecida como "tomate-de-árvore" ou "sangue-de-boi". No Paraná outro nome que ele recebe é o de "tomate-japonês".
        Em Portugal também é conhecida como "tomate-inglês".',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (13, 'Frutos de Ora Pro Nobis 10 Frutos Frete Gratis', 3, 2, 200, 400,
        'A ora-pro-nóbis (Pereskia aculeata Mill.) é uma cactácea não endêmica do Brasil. Suas folhas são aproveitadas como alimento em algumas
        regiões do interior de Minas Gerais e são conhecidas pelos altos teores de ferro e proteínas1.
        Seu fruto é comestível mas seu aproveitamento é muito restrito em função do desconhecimento de suas propriedades e das dificuldades de
        coleta e processamento. Entretanto, estudos sobre sua constituição apontam para altos teores de carotenoides e compostos fenólicos,
        sendo rico em substâncias bioativas2.',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (14, 'Mudas Fruta do Milagre Variedade Gigante', 3, 2, 200, 400,
        'Lindas mudas da fruta que tem despertado o mundo, agora na variedade "gigante", com frutos um pouco maiores e de maior produção;
        Possuem de 35 a 45cm e produzirão no primeiro ano (em média, 6 meses). São plantas em forma de arbustos rústicos, que exigem cuidados mínimos,
        podendo ser plantadas em vasos (40x40 ou 40 de diâmetro mínimos)',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (15, 'Goji Berry 1KG Fruto Desidratado Pronta Entrega', 3, 4, 200, 400,
        'A Goji Berry é uma fruta originária do Tibete e da China que há muito tempo vem sendo utilizada para melhorar muitos aspectos da saúde humana.
        É rica em aminoácidos, vitaminas, ácidos graxos insaturados (como o ômega-3), poderosos antioxidantes e polissacarídeos. A melhor noticia é
        que, mesmo contendo tantos nutrientes importantes, essa frutinha tem poucas calorias.',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (16, 'Hibisco Desidratado Cha 500G', 3, 4, 200, 400,
        'O hibisco (Hibiscus sinensis) é uma flor, rica em antocianina e polifenóis, potentes antioxidantes. Segundo estudos, a quantidade
        encontrada de antioxidante no hibisco é equivalente à quantidade encontrada nas uvas e vinho tinto.
        Os antioxidantes são capazes de neutralizar os radicais livres que são produzidos no organismo e podem ser prejudiciais à saúde, favorecendo,
        por exemplo, o envelhecimento precoce da pele e o aparecimento de algumas doenças.',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (17, 'Whisky Johnnie Walker Double Black 1000ML', 3, 8, 200, 400,
        'Diferentemente do Black Label Clássico (12 anos), o Double Black possue o sabor defumado mais intenso.As características de Johnnie
        Walker Black Label, especialmente as notas defumadas, são ainda mais intensas em Johnnie Walker Double Black.
        Produzido a partir da combinação de alguns maltes exclusivos, selecionados especialmente para garantir o sabor defumado e envelhecidos em
        barris de carvalho, o que significa uma qualidade exemplar.Tem aromas turfados mais encorpados e intensos e sabor defumado.A produção é
        artesanal, feita em pequenos lotes, a partir de uísques de destilarias da costa oeste escocesa.',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (18, 'Vodka Absolut Unique 1L Ed. Limitada Raridade', 3, 8, 200, 400,
        'Uma edição limitada com mais de quatro milhões de garrafas únicas em todo o Mundo, exclusivas e numeradas. Foram utilizadas 40 cores e
        aplicados diversos desenhos diferentes nas garrafas para chegar em quatro milhões de combinações artísticas únicas. Cada garrafa carrega
        um selo branco com seu número exclusivo de fabricação e com as informações sobre a bebida.',
        30.30, 25.00, 111, 0, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (19, 'Espumante Cava Freixenet Carta Nevada 750ML', 3, 8, 200, 400,
        'De coloração amarelo palha com reflexos dourados, limpo e brilhante, com borbulhas de tamanho médio formando uma bela coroa. Nariz franco
        e limpo. Destacam-se aromas florais (flores blancas) e de fruta fresca, com sutis aromas cítricos. Boa estrutura em boca, fresco, suave
        acidez, bom comportamento do gás carbônico com um bouquet muito particular. Aparecem os tons florais no retronasal.',
        30.30, 25.00, 111, 0, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (20, 'Coca-Cola Vanilla Sabores Baunilha Caixa 12 Latas', 3, 10, 200, 400,
        'Coca-Cola Vanilla Sabores Baunilha Caixa 12 Latas',
        30.30, 25.00, 111, 0, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (21, 'Refrigerante Crush Orange Importado 12 Latas', 3, 10, 200, 400,
        'Refrigerante Crush Orange Importado 12 Latas',
        30.30, 25.00, 111, 0, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (22, 'Refrigerante Canada Dry Ginger Ale Caixa 12 Latas', 3, 10, 200, 400,
        'Refrigerante Canada Dry Ginger Ale Caixa 12 Latas',
        30.30, 25.00, 111, 0, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (23, 'Ferro de Passar Roupa a Vapor com Caldeira Delonghi', 3, 27, 200, 400,
        'Ferro de passar com caldeira VVX1475 da Delonghi. Possui compartimento para fios, base dupla (cerâmica + aço inox) patenteada o que
        resulta num deslizamento perfeito em todos os tipos de tecido e eficiência reforçada com o uso dos dois materiais, opção de vapor duplo
        que pode ser acionado de forma concentrada somente na ponta ou em toda a superfície da base, painel com tecla de liga/desliga e controle
        do nível de vapor, economia de água e energia de até 35% e maior durabilidade e eficiência.',
        30.30, 25.00, 111, 0, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (24, 'Lencol Elastico 2 Fronhas Quenn Malha-Penteada 100 Algodao', 3, 18, 200, 400,
        'Nada mais gostoso do que uma boa noite de sono, em meio a lençóis com toque macio. Esta peça é feita em malha 100% algodão 30/1, fio
        penteado, o que garante máximo conforto e agradável descanso. Disponível em diversas cores, oferece várias opções para combinar com a
        decoração do quarto.',
        30.30, 25.00, 111, 0, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (25, 'Manta de Sofa Gigante Tipo Capa de Sofa Algodao 240X180M', 3, 11, 200, 400,
        'Use no seu sofá lindas mantas em algodão,produto natural que realça a beleza de seu ambiente decorando sua sala dando um ar de sofisticação.
        Pode ser usada como  uma peça decorativa ou para proteger seu sofá.Usando-a dobrada como ilustra a foto, dá um ar de requinte e usando aberta
        protege de poeira e de animais que eventualmente podem estragar seu sofá .Protegendo seu sofá do dia a dia você pode economizar em uma reforma
        ou até mesmo na troca.',
        30.30, 25.00, 111, 0, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (26, 'Divergente Insurgente Convergente Quatro 04 Livros', 3, 83, 200, 400,
        'Divergente é o primeiro livro da série de mesmo nome escrita pela autora norte-americana, Veronica Roth. Foi lançado nos Estados Unidos
        em 25 de Abril de 2011, chegando ao Brasil e Portugal em 2012. Seu segundo livro, Insurgente, foi lançado em 1º de Maio de 2012 nos Estados
        Unidos, enquanto o terceiro, Convergente em Outubro de 2013. A série foi comparada a Jogos Vorazes virando um grande sucesso e conquistando
        cada vez mais leitores. Conheça mais dessa trilogia imperdível!',
        30.30, 25.00, 111, 0, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (27, 'Box-Supernatural Kit com 05 Livros', 3, 83, 200, 400,
        'Box Supernatural - Contendo 5 Títulos ; o Diário de John Winchester- Capa Dura. o Livro dos Monstros- Espíritos, Demônios e Ghouls. o
        Guia de Caça de Bobby Singer. Nunca Mais e Guerra dos Filhos.',
        30.30, 25.00, 111, 0, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (28, 'Colecao 8 Livros Fabulas a Cigarra e a Formiga Lebre Raposa', 3, 78, 200, 400,
        'Ao mesmo tempo em que desenvolvem a capacidade de fantasia infantil, as consagradas fábulas de Esopo e La Fontaine fornecem importantes
        instruções de vida, favorecendo o poder de discernimento da criança e despertando-lhe coragem para trilhar seu caminho no mundo, consciente
        da possibilidade e importância de lutar por valores e comportamentos positivos.',
        30.30, 25.00, 111, 0, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (29, 'Tablet Positivo Duo ZX3020 Prata e Preto 2 em 1 Quad-Core 16GB', 3, 95, 200, 400,
        'O novo notebook híbrido Positivo Duo ZX integra o que há de melhor em tablets e notebooks, unindo as duas tecnologias em um produto moderno
        e sofisticado. A tela touch destacável é um poderoso tablet de 10 polegadas, Quad-Core com Windows 8, para muito desempenho e diversão.
        Conectando à doca, transforme o tablet em um notebook e produza conteúdos de forma mais eficiente e confortável, com teclado, touchpad e porta
        USB extra para conectar dispositivos sem necessidade de adaptadores.',
        30.30, 25.00, 111, 0, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (30, 'Pen Drive Titan 8GB Preto Multilaser PD601', 3, 101, 200, 400,
        'Salve tudo que precisa e tenha sempre com você o Pen Drive Titan 8 GB. Leve e de formato anatômico ele permite que você tenha sempre à
        mão suas músicas, fotos, vídeos e arquivos pessoais.
        Compatível com Windows 98 e superiores/ Mac OS 9.0 e superiores; a conexão USB 2.0 e taxa de transmissão de 13 MB/s (leitura) e 5 MB/s
        (gravação) faz com o que ele seja rápido nas tarefas do dia a dia.
        O Titan ainda acompanha uma cordinha, para que você o prenda no estojo, chaveiro ou alça interno da bolsa, assim você sempre irá encontrá-lo.',
        30.30, 25.00, 111, 0, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (31, 'HD Externo Portatil Samsung M3 1TB USB 3.0', 3, 99, 200, 400,
        'Graças ao design leve e compacto, o Samsung M3 pode ser transportado com enorme facilidade. O HD externo garante que você consiga levar
        seus arquivos de fotos, vídeos, músicas e muito mais para qualquer lugar. Ao todo, o produto oferece um espaço generoso de 1TB. Para
        assegurar que os dados mais importantes não sejam violados, basta utilizar os recursos do SecretZone e SafetyKey. Compatível com Windows
        e Mac, aparelho se destaca pela velocidade impressionante. A taxa de 480 Mbps e a interface USB (2.0 e 3.0) deixam muito mais fácil a
        transferência de conteúdos. O equipamento é bastante fácil de usar, já que basta ser plugado para que comece a funcionar. Nada de CDs ou
        softwares de instalação.',
        30.30, 25.00, 111, 0, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (32, 'Tablet Semp-Toshiba TA0703G 16GB 7 WI-FI 3G', 3, 95, 200, 400,
        'O Tablet TA0703G foi desenvolvido para proporcionar aos usuários um desempenho incrível em todas as tarefas que serão utilizadas, com a
        performance do processador Rockchip Dual Core você terá uma navegação ágil e eficaz. Aliado a memória interna de 16 GB e capacidade de
        expansão para 32 GB, você terá armazenamento de sobra para se entreter a vontade e realizar todos os tipos de tarefa com segurança, sem perder nenhum arquivo.',
        30.30, 25.00, 111, 0, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (33, 'Multifuncional Colorida Wireless 2546 HP', 3, 152, 200, 400,
        'Esse all-in-one HP Deskjet de custo acessível oferece impressão sem fios fácil de qualquer lugar da sua casa, além de digitalização e
        cópia — por menos. Configure imediatamente e conte com os resultados de qualidade de que você precisa, usando cartuchos de tinta HP
        originais de baixo custo.',
        30.30, 25.00, 111, 0, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (34, 'Fax Panasonic KX FT932BR com Bina Novo Garantia 1 Ano', 3, 153, 200, 400,
        'Você pode enviar o mesmo documento para até 20 números, se você armazenar ítens na agenda telefônica ou na discagem rápida na memória de
        multitransmissão.
        Os números são mantidos na memória de multitransmissão , permitindo que sejam reutilizados com frequência.',
        30.30, 25.00, 111, 0, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (35, 'Telefone Sem Fio Philips D1201BBR Dect 60 Bina Preto', 3, 96, 200, 400,
        'Telefone fixo, sem fio, é com a Philips Ideal para a sua casa ou escritório .
        O equívoco de quem diz que os telefones fixos chegaram ao fim é enorme. A utilidade deles é incrível e, se você não abre mão da eficiência,
        vai se surpreender ainda mais com esse aparelho da Philips.
        A economia e a liberdade de possuir um telefone sem fio são diferenciais, principalmente para quem quer mais privacidade. Como os celulares
        ficaram mais comuns, ter um fixo é saber que apenas os próximos te encontrarão em casa.
        O D1201B/BR é realmente uma excelente opção para casa ou escritório com diversas opções de recurso, possibilitando um aproveitamento enorme
        de uso.
        Seja direto Criado para falar.
        Esqueça aplicativos e SMS. Destinado somente às ligações, você poderá perceber que o aparelho tem áudio muito mais claro e a bateria de
        altíssimo rendimento garante 10 horas de conversa numa só carga.
        Resiste longe da base Chega a até 180 horas em espera.',
        30.30, 25.00, 111, 0, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (36, 'Bateria Musical Infantil Transformers 100 Original Kids', 3, 110, 200, 400,
        'Utilidades interativas Bateria Acúsitca com som radical para seu filho . Prato de metal e Bumbo com cor de metal reforçado , surporte de
        bumbo acabamento personalizado com o Maximo de uma Bateria proficional . A Bateria transformes vai criar muito momentos de emoção para
        você e seu filho invente suas batidas e torne-se um verdadeiro Rock Star Itens inclusos Acompanha: 01 - Tom Pequeno - 01 - Tom medio e tom
        grande - 01 - Prato - Suporte para Prato - 01 - Par de baquetas Marca Conthey By Kids',
        30.30, 25.00, 111, 0, '2012-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (37, 'Mini Helicoptero V911 4 Canais com Gyro e Controle 24GHZ', 3, 106, 200, 400,
        'O primeiro helicóptero RC que pode voar ao ar livre em clima de vento (eólica exterior grau 3-4).
        Projeto pioneiro única hélice, pode evitar consideravelmente a resistência do vento.
        Alta qualidade dossel de metal ultrafino com peso ultra-leve e forte resistência de impacto.
        Asa rotor de alta tenacidade.
        Melhor desempenho do que voando ALIGN T-REX 100 S: extremamente estável e extremamente ágil.
        O controle remoto é projetado com um disply LCD para uma operação mais fácil e mais preciso.',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (38, 'Tapete Infantil EVA Alfabeto Numeros Alfanumerico Bebe 40PCS', 3, 113, 200, 400,
        'O Cubo Alfanumérico é um tapete colorido atóxico e lavável.
        Composto por quarenta peças em E.V.A para crianças a partir de três anos. Ele ajuda a criança estimulando a conhecer e a brincar com os
        números. Pode ser usado como decoração, para abafar o som e também amortecer impacto.',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (39, 'Piano Teclado Musical Infantil Sons Eletrnico Frete Gratis', 3, 110, 200, 400,
        'BEBÊ MUSICAL PIANO, ALEGRE, DIVERTIDO, REPLETO DE CORES E SONS. AUXILIA NO DESENVOLVIMENTO PEDAGÓGICO DA CRIANÇA ESTIMULANDO A CAPACIDADE
        VISUAL, AUDITIVA E A COORDENAÇÃO MOTORA.
        POSSUI 3 FUNÇÕES DIFERENTES E LUZES PISCANTES, A CRIANÇADA VAI ADORAR!',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (40, 'DVD Player H Buster HBD 6680 Tela 27 Toca CD USB MP3 Radio', 3, 118, 200, 400,
        'Esse DVD automotivo inovador e moderno possui frente Flip Down removível e controle remoto slim, assim você comanda a festa com
        tranquilidade e pode guardar o aparelho sempre que quiser.
        A tela LCD colorida tem formato Wide 16:9 e resolução 320x240, reproduzindo áudios, fotos e vídeos com excelente definição, através de CDs,
        DVDs e entrada USB frontal. O DVD H-Buster é uma ótima opção para quem busca melhorar o entretenimento no carro, entregando algo a mais
        por muito menos.',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (41, 'Caixa Trio 100 Selenium 2 Modulos Taramps Frete Gratis', 3, 114, 200, 400,
        'Através deste sistema você poderá reproduzir sons em todas as faixas de áudio.Reproduzindo entre 40Hz e 25000Hz, conseguindo assim uma
        qualidade incomparável.',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (42, 'Capas de Courvin para Bancos Automotivos Frete Gratis', 3, 122, 200, 400,
        'CAPAS AUTOMOTIVAS 1)ELEGÂNCIA: Capas personalizadas,com acabamentos refinados : costura dupla ,logotipo bordado.para dar um aspecto
        diferenciado em seu automóvel. seguindo a originaidade do seu carro. 2)CONFORTO : São capas desenvolvidas com a intenção de unir qualidade
        ao bem estar proporcionando.Conforto absoluto.(reforçados os encostos e assentos com uma pequena camada de espuma) 3)QUALIDADE: ?material
        utilizado nas montadora subistituindo o couro mas mantendo todas as caracteristicas, resistência, conforto, durabilidade . ?Tecnologia
        exclusicava e inovadora de ajuste ao banco, dando um melhor acabamento e aparência. fabricado com (courvin)de 1º qualidade,são materiais
        acoplados com um forro (espuma) especial para garantir maior segurança,sem perde a maciez do produto.Modelada para ficar justo e bonito nos
        bancos a capa cobre toda parte do tecido da forração original 4)PRATICIDADE:Facil instalaçao! Você mesmo pode instalar na garagem de sua
        casa). Fácil de limpar(impermeável) Não precisa de mão de obra especializada. Presa com botoes de pressão nos encostos e com cordoes no
        assentos Tempo de instalação:aproximadamente 1:30 HORA. 5) EFICIÊNCIA:As capas em courvin são fabricadas no estilo original ,ou seja são
        feitas sob-medidas (exatas) para colocar por cima da forração original,portanto não agredi as estruturas dos bancos(espumas/tecidos) não é
        necessário arrancar a forração original. 6) DURABILIDADE: Média de 2 á 5 anos de uso em bom estado,tempo no qual vale o investimento de
        baixo custo e que garante a sua satifaçao (em adquirir o kite de capas da fenix automotivo). 7) VERSATILIDADE: É um produto fácil de limpar,
        pode remover sempre que desejar,tem o beneficio de proteger o estofamento original,que é de extrema importância, caso haja o interesse de
        vender/trocar o veículo Com certeza um veículo com acabamento interno conservado,valoriza o bem, que é um patrimo patrimônio.',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (43, 'Kit Caixa Trio Completa 7000W 2 12 4D 2T Modulo 4000W', 3, 114, 200, 400,
        'Caixa de som automotivo completa: 2 - subwoofer de 12", + 4 driver, + 2 tweeter, + módulo de 1.950w Rms total e 4 corneta junto já com
        4 capacitores.',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (44, 'Modulo Amplificador Taramps TS 800 X4 800W RMS RCA Sedex', 3, 114, 200, 400,
        'Esse Módulo Amplificador Taramps TS 800x4 de 2 Ohms tem todos os requisitos que você precisa para deixar seu som muito mais potente e tunado.
        Elaborado para atender sons graves, médios e agudos, o Amplificador TS800X4 Taramps conta com 4 saídas de 240W a 13,8VDC, totalizando uma
        potência de 960W RMS. O Módulo Amplificador já possui crossover embutido e controle “bass boost” que ajuda controlar e reforçar mais ainda os
        graves. Além de possuir 4 entradas RCA, controle de ganho de potência e 2 Ohms',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (45, 'Maleta de Ferramentas com 142 Pecas BR Tools', 3, 124, 200, 400,
        'A Maleta de Ferramentas 142 peças BR Tools foi desenvolvida para facilitar sua vida na hora de transportar e armazenar suas ferramentas.
        Composto por 142 ferramentas é o kit ideal para você ter em sua residencia, escritório para auxiliar nos mais diversos reparos, as
        ferramentas são fabricadas em aço carbono que garantem maior durabilidade de seu produto. A maleta de ferramentas com 142 peças conta com
        a qualidade BR Tools, marca de máquinas e ferramentas com qualidade e desempenho avançados.',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (46, 'Jogo de Ferramentas 110 Pecas Mayle', 3, 124, 200, 400,
        'Jogo de Ferramentas 110 Pecas Mayle',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (47, 'Kit Jogo Ferramentas e Furadeira Maleta 110PCS Frete Gratis', 3, 124, 200, 400,
        'Kit Jogo Ferramentas e Furadeira Maleta 110PCS',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (48, 'Camisa 3D Caveira Breakthough The Mountain no Brasil', 3, 138, 200, 400,
        'As camisas são pré-encolhidas. São lavadas e secas no processo de tingimento, portanto, não deve haver nenhum encolhimento perceptível.
        Camisetas são feitas de 100% algodão e são tingidas à mão.
        Todos os desenhos camiseta são feitas a partir de água à base de tintas que são tingidos no tecido em si. O processo de impressão dá estas
        camisas um toque macio; ao contrário do plástico pesado "escudo" criado por serigrafia.
        Lavagem: Antes de usar, lave-os separadamente em água fria.',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (49, 'Camisetas Engracadas Dandas Filmes Serie Games Super Herois', 3, 138, 200, 400,
        'Camisetas Engracadas Dandas Filmes Serie Games Super Herois',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (50, 'Camisa Social Slim Fit Importada 200 Novos Modelos', 3, 137, 200, 400,
        'FABRICAÇÃO PRÓPRIA, PRODUTO DISPONIVEL A PRONTA ENTREGA CASO NAO ESTEJA DISPONIVEL EM ESTOQUE SERÁ FABRICADO E ENVIADO NO PRAZO MAXIMO DE
        5 DIAS UTEIS.
        Acompanhamos a sua compra desde o pedido até a chegada dele à sua casa e assim, te damos toda a assistência necessária para uma compra segura.',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (51, 'Calca Jeans Preta Skinny Sarja Jeans', 3, 140, 200, 400,
        'A calça skinny é um modelo que caiu no gosto de todas as mulheres, afinal, ela fica bem em todos os tipos de corpos e combina com tudo
        que é roupa. Mas lembre-se sempre da regra de ouro para compôr looks com esse tipo de calça: calça justa embaixo, a parte de cima deve
        ser larguinha! Fazer sobreposições deixa o look bem moderno. Aposte nas sobreposições camisa + cardigan ou sweater. Se você quiser um
        visual mais rocker, aposte nas jaquetas de couro modelo perfecto!',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (52, 'Calca Combat Forhonor Top de Linha Ripstop Design Marines', 3, 140, 200, 400,
        'Produzida em tecido RIP STOP SUPER, composto por 67% algodão / 33% poliéster.
        Tecido Original, importado dos EUA - Tecido leve, superior às calças mais comuns.
        Conforto garantido, testado e aprovado pela Equipe VentureShop em Campos de Airsoft ! Pode ser usado também no dia-a-dia.
        Fechamento frontal com zíper YKK e Velcro com opção de ajustes, evitando assim o uso de botões tradicionais que dificultam o manuseio e
        reagem à temperaturas extremas em contato com a pele.
        Cinco passadores com 8cm de abertura facilitando o uso de cinto tático.
        Velcro para regulagem e ajuste de perna, sendo um na altura do joelho e um na altura do tornozelo, dispensando uso de bombacha.
        Reforço duplo de tecido RIP STOP SUPER na altura do joelho fixado com costura dupla.
        Super reforçada na altura do gancho traseiro fixado com costura dupla.
        Gancho dianteiro abaixo do zíper reforçado em costura dupla impossibilitando o rasgamento em uso operacional - ex: uso de coldre fixado na coxa.
        Protetor lombar para maior conforto na região lombar das costas.',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (53, 'Kit com 3 Cinto em Gorgoro Cafetroy', 3, 139, 200, 400,
        'O Kit 3 Cinto Sandro Moscoloni são todos confeccionados em gorgorão com recortes em couro legítimo. Com largura de 4 cm. A fivela é presa
        com parafuso de regulagem, permitindo redução do tamanho original.',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (54, 'Adidas Springblade Drive 4 Original 20 Pronta Entrega', 3, 143, 200, 400,
        'Para os apaixonados por estilo e conforto, o Tênis Adidas Springblade Drive é a pedida de certa! Com uma energia explosiva aliada a um
        design inovador, proporciona impulso a cada passo.',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (55, 'Tenis Mizuno Prophecy 2 Original Frete Gratis Pronta Entrega', 3, 143, 200, 400,
        'Em sua quarta versão, o Tênis Mizuno Wave Prophecy 4 Masculino mantém suas origens em proporcionar o máximo em amortecimento para o seu
        melhor desempenho nas atividades físicas. Seu cabedal todo envolto com “AIRmesh”, possui um tecido de tramas abertas que proporciona maior
        ventilação, garantindo o máximo de conforto e evitando odores indesejáveis aos seus pés. Com tecnologia “DINAMOTION FIT”, a peça permite a
        interação perfeita do calçado com os movimentos dos pés, minimizando possíveis contusões, devido a sua construção especial que promove
        maior estabilidade, aliviando o stress nas articulações, além de auxiliar na melhoria de sua performance. A entressola por sua vez, conta
        com a tecnologia “U4ic” (pronuncia-se euphoric), desenvolvida com uma nova composição de polímeros, tornando o calçado 36% mais leve do que
        um com EVA comum, resultando em uma textura mais macia, de alta absorção de impactos e o melhor: reduzindo o tempo de descanso do tênis entre
        suas atividades para apenas oito horas, diferente do EVA, que necessita de vinte e quatro horas de descanso entre as atividades.',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (56, 'Bota Masculina Sandro Moscoloni em Couro Worker Amarelo', 3, 147, 200, 400,
        'Com um visual rústico, a Bota Challenger Off Road foi desenvolvida para proporcionar estilo, conforto e durabilidade. Confeccionada em
        couro floater, a Bota é indicada para operações de longa duração, operações em terrenos acidentados e úmidos. O modelo Challenger, também
        compõe diversos estilos mais charmosos, sempre ao lado de peças em diferentes tons. Devido ao seu visual moderno, o modelo faz o estilo
        de vários homens, que fazem de seu visual parte de sua personalidade. Ideal para quem gosta de aventuras!',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (57, 'Sapato Social em Couro Verniz 100 Legitimo Frete Gratis', 3, 145, 200, 400,
        'Os sapatos masculinos são o acessório que mais valoriza a produção do homem em qualquer ocasião.
        Os sapatos em Couro Verniz são indicados para compor os looks mais formais e chiques. A linha Veneza é extremamente elegante, sofisticada,
        luxuosa e transforma um simples visual formal com muito requinte.',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (58, 'Sapato Importado Feminino Glitter Pronta Entrega no Brasil', 3, 145, 200, 400,
        'Confeccionados com o mais alto padrão de qualidade Produto a pronta entrega!!
        Totalmente livre de qualquer tipo de tributação feita pela Alfândega.
        OBS: Os sapatos poderam ter solados vermelho ou preto, dependendo da disposição em estoque.',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (59, 'Sapatenis em Couro Legitimo Sandro Moscoloni Street', 3, 144, 200, 400,
        'Produzido em couro Látego em cor Marrone. O Sapato Sandro Moscoloni Streer, apresenta pespontos em torno do modelo e ilhoses nos passantes
        do cadarço. Detalhe de tira em gorgurão itálico na língua do calçado. Parte interior em couro com material têxtil. Palmilha macia com um
        sistema exclusivo (Flexibility 360°), proporcionando muito conforto durante o uso e um caminhar suave. Possui solado de borracha, com sistema
        de amortecimentos de impactos (SYSTEM GEL CONSTRUCTION); que garante maior conforto e estabilidade em diferentes tipos de solo.',
        30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (60, 'Relogio Invicta Pro Diver 6981 Ouro 18K', 3, 148, 200, 400,
        'Um classico Invicta que não pode faltar na sua coleção. Sua pulseira em borracha com detalhes em aço inoxidável torna esse relógio um
        coringa, para uso com roupas mais formais ou esportivas. Tem sido a escolha de entrada de muitos colecionadores no mundo invicta. Um
        relógio facil de combinar e que agrada todos os gostos. Como presente é escolha certa e sem risco.',
        30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (61, 'Smartwatch U8 Relogio Inteligente Bluetooth Android Iphone', 3, 148, 200, 400,
        'Novo relógio inteligente U8 UWatch Fit para Smartphones IOS da Apple, Android, iphone 4 / 4S / 5 / 5C / 5S, Android Samsung S2 / S3 / S4 /
        Note 2 / Nota 3, HTC, Sony, Blackberry da LEMFO.
        Ideal para práticas de esportes outdoor, esse companheiro inteligente é Podômetro, Cronômetro, calendário, chamada Sync, Calculadora, Relógio,
        Alarme, Anti-perda,  medidor de altitude e seu Fotografo!
        Controla seu smartphone a distancia para posicionar e clicar aquela foto!
        Sabe aquela hora que você queria tirar a foto da galera, mas não tá entrando? Pois é, esse dispositivo é ótimo para isso. Só posicionar o seu
        smart no lugar pra tirar foto, e o clique fica por conta do U8.',
        30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (62, 'Relogio Feminino com Estojo 26 Pulseiras 26 Aros Relogios', 3, 148, 200, 400,
        'Este relógio analógico, além de super moderno, possui pulseira de silicone . Com 25 cores sortidas . Ideal para
        quem é pontual e gosta de estar sempre na moda!',
        30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (63, 'Relogio de Pulso Vintage Feminino em Couro Brinde Exclusivo', 3, 148, 200, 400,
        'Relógio de pulso feminino, excelente qualidade e durabilidade! Pulseira de Couro Ajustavél. Analógico, Cores: Azul Pingente Folha,
        Vermelho Pingente Coração, Verde Pingente Coração, Marrom Pingente Folha.',
        30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (64, 'Pulseira Bracelete Masculina Tribal Couro 2 Unidades Frete Gratis', 3, 149, 200, 400,
        'Pulseira Masculina Couro Legítimo (2 Peças)',
        30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (65, 'Pulseira Masculina Bracelete Couro Legitimo Preto Aco Inox', 3, 149, 200, 400,
        'Pulseira Masculina confeccionada em couro legítimo, com detalhes em aço inoxidável Trabalhado.',
        30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (66, 'Pulseira Feminina Victoria Secrets Cristal Banhado Ouro 18K', 3, 149, 200, 400,
        'Linda Pulseira Feminina Victoria´s Secret Cristal  Swarovski Alto Brilho Banhada a Ouro 18k Tamanho da pulseira  23 centímetros, podendo
        ser ajustado para qualquer espessura de pulso menor que 23 cm.
        Linda e delicada pulseira para mulheres surpreendentes.
        Uma ótima opção para presentear alguem especial.
        Produto a pronta entrega com envio imediato após confirmação do pagamento.',
        30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (67, 'Caixa com 10 Resmas Papel Folha A4 75G Reciclado Chamex', 3, 154, 200, 400,
        'Papel de superfície lisa, totalmente reciclado, possui excelente qualidade de impressão. Ideal para diferenciar os trabalhos por possuir
        textura única e ser reciclado.
        Tipos de impressão.
        Off Set, Tipografia, Serigrafia, Relevo Seco, Hot Stamping ,Jato de tinta e Laser.
        Utilização.
        Relatórios, cardápios, currículos, embalagens, cartazes, etc.',
        30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (id, product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES (68, 'Carimbos para Professoras Premium 20 Original', 3, 155, 200, 400,
        'Carimbos personalizados para professores e profissionais da área pedagógica.
        + de 500 desenho e modelos para facilitar seu dia a dia. Ganhe mais tempo para ensinar!
        Bom, bonito e barato com a confiança de ser um produto Carimbarte.',
        30.30, 25.00, 111, 0, NOW(), NOW());

## 15 registros na tabela "bookings" ---------------------------------------------------

INSERT INTO bookings (product_id, quantity, user_id, created, modified)
VALUES (1, 5, 1, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO bookings (product_id, quantity, user_id, created, modified)
VALUES (2, 10, 2, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO bookings (product_id, quantity, user_id, created, modified)
VALUES (3, 5, 3, '2013-10-28 09:39:49', '2014-10-28 09:39:49');

INSERT INTO bookings (product_id, quantity, user_id, created, modified)
VALUES (4, 8, 4, '2013-10-28 09:39:49', '2014-10-28 09:39:49');

INSERT INTO bookings (product_id, quantity, user_id, created, modified)
VALUES (5, 6, 5, '2013-10-28 09:39:49', '2014-10-28 09:39:49');

INSERT INTO bookings (product_id, quantity, user_id, created, modified)
VALUES (6, 5, 1, '2013-10-28 09:39:49', '2014-10-28 09:39:49');

INSERT INTO bookings (product_id, quantity, user_id, created, modified)
VALUES (7, 10, 2, '2013-10-28 09:39:49', '2014-10-28 09:39:49');

INSERT INTO bookings (product_id, quantity, user_id, created, modified)
VALUES (8, 5, 3, '2014-10-28 09:39:49', '2015-10-28 09:39:49');

INSERT INTO bookings (product_id, quantity, user_id, created, modified)
VALUES (9, 8, 4, '2014-10-28 09:39:49', '2015-10-28 09:39:49');

INSERT INTO bookings (product_id, quantity, user_id, created, modified)
VALUES (10, 6, 5, '2014-10-28 09:39:49', '2015-10-28 09:39:49');

INSERT INTO bookings (product_id, quantity, user_id, created, modified)
VALUES (11, 5, 1, '2014-10-28 09:39:49', '2015-10-28 09:39:49');

INSERT INTO bookings (product_id, quantity, user_id, created, modified)
VALUES (12, 10, 2, NOW(), NOW());

INSERT INTO bookings (product_id, quantity, user_id, created, modified)
VALUES (13, 5, 3, NOW(), NOW());

INSERT INTO bookings (product_id, quantity, user_id, created, modified)
VALUES (14, 8, 4, NOW(), NOW());

INSERT INTO bookings (product_id, quantity, user_id, created, modified)
VALUES (15, 6, 5, NOW(), NOW());

## 275 registros na tabela "features" ----------------------------------------------------

INSERT INTO features (id, feature_name, created, modified)
VALUES (1, 'Altura', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (id, feature_name, created, modified)
VALUES (2, 'Largura', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (id, feature_name, created, modified)
VALUES (3, 'Profundidade', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (id, feature_name, created, modified)
VALUES (4, 'Peso', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (id, feature_name, created, modified)
VALUES (5, 'Validade', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (id, feature_name, created, modified)
VALUES (6, 'Garantia', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (id, feature_name, created, modified)
VALUES (7, 'Cor', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (id, feature_name, created, modified)
VALUES (8, 'Material', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (id, feature_name, created, modified)
VALUES (9, 'Sistema Operacional', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (id, feature_name, created, modified)
VALUES (10, 'Modelo', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (id, feature_name, created, modified)
VALUES (11, 'Resolução da câmera', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (id, feature_name, created, modified)
VALUES (12, 'Câmera traseira', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (id, feature_name, created, modified)
VALUES (13, 'Câmera frontal', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (id, feature_name, created, modified)
VALUES (14, 'Som', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (id, feature_name, created, modified)
VALUES (15, 'Grava vídeo', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (id, feature_name, created, modified)
VALUES (16, 'Slot para cartão', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (id, feature_name, created, modified)
VALUES (17, 'Cartão incluso', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (id, feature_name, created, modified)
VALUES (18, 'Rádio FM', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (id, feature_name, created, modified)
VALUES (19, 'MP3 player', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (id, feature_name, created, modified)
VALUES (20, 'Bluetooth', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (id, feature_name, created, modified)
VALUES (21, 'Bluetooth Estéreo (ouça suas músicas em um dispositivo Bluetooth)', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (id, feature_name, created, modified)
VALUES (22, 'Wi-Fi', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (id, feature_name, created, modified)
VALUES (23, 'Conectividade', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (id, feature_name, created, modified)
VALUES (24, 'Suporte a GPS', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (id, feature_name, created, modified)
VALUES (25, 'Mensagens', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (id, feature_name, created, modified)
VALUES (26, 'Toques', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (id, feature_name, created, modified)
VALUES (27, 'Processador', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (id, feature_name, created, modified)
VALUES (28, 'RAM', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (29, 'Sintonizador de TV', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (30, 'Tecnologia', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (31, 'Quadriband GSM', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (32, 'Frequências', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (33, 'Dual Chip', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (34, 'Tipo do Chip', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (35, 'Memória interna', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (36, 'Resolução do visor/display (pixels)', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (37, 'Tamanho do visor (cm)', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (38, 'Cor', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (39, 'Observações', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (40, 'Tipo de tela', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (41, 'DTVi', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (42, 'PVR Ready', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (43, 'Closed Caption', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (44, 'Canais Favoritos', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (45, 'Sleep Timer e Timer On', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (46, 'Bloquear canais e Bloqueio por classificação indicativa', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (47, 'EPG', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (48, 'HDMI ARC', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (49, 'Entradas HDMI', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (50, 'Entrada de Vídeo Composto (áudio e vídeo)', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (51, 'Entrada para PC', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (52, 'Porta LAN - para conexão de rede', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (53, 'Saída para fone de ouvido', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (54, 'Entrada USB', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (55, 'Estéreo Surround', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (56, 'Modo preferencial de som', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (57, 'Auto volume', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (58, 'Potência de saída de áudio', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (59, 'Modo preferencial de imagem', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (60, 'Ajuste da luz de fundo', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (61, 'Voltagem', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (62, 'Stand by', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (63, 'Consumo Médio', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (64, 'Wi-fi', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (65, 'Capacidade do Copo', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (66, 'Código do Produto', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (67, 'Funções', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (68, 'Velocidade', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (69, 'Marca', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (70, 'Alimentação', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (71, 'Portátil (sem fio)', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (72, 'Cor', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (73, 'SAC', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (74, 'Fornecedor', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (75, 'Código de Barras', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (76, 'Formatos reproduzidos de áudio', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (77, 'Formatos reproduzidos de vídeo', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (78, 'Formatos reproduzidos de fotos', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (79, 'Formatos reproduzidos de textos', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (80, 'Duração da Bateria em uso', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (81, 'Duração da Bateria em standby', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (82, 'Entrada para qual modelo de Cartão de Memória', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (83, 'Memória interna', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (84, 'Conexões', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (85, 'Idiomas', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (86, 'Alimentação', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (87, 'Coleção', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (88, 'Faixa de Peso Suportado (Kg)', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (89, 'Classificação', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (90, 'Acessórios', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (91, 'Pés (Material)', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (92, 'Acabamento', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (93, 'Estrutura', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (94, 'Assentos', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (95, 'Tampo', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (96, 'Quantidade de itens', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (97, 'Tipo', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (98, 'Fabricado em', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (99, 'Sabor', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (100, 'Validade', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (101, 'Cultivo', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (102, 'Usos', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (103, 'Nome Cientifico', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (104, 'Forma de entrega', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (105, 'Nome popular', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (106, 'Origem', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (107, 'Caraterísticas', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (108, 'Porte', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (109, 'Flores', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (110, 'Luz', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (111, 'Solo', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (112, 'Clima', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (113, 'Regas', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (114, 'Podas', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (115, 'Adubação', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (116, 'Graduação Alcoólica (%)', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (117, 'Peso liquido', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (118, 'Ingredientes', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (119, 'Aroma', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (120, 'Mais Informações Tecnicas', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (121, 'Temperatura ideal', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (122, 'Placa antiaderente', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (123, 'Vapor', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (124, 'Conteúdo da Embalagem', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (125, 'Capacidade', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (126, 'Lençol com elástico', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (127, 'Medida do lençol de baixo', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (128, 'Medida fronha', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (129, 'Lençol com elástico', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (130, 'Bordado', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (131, 'Estampado', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (132, 'Medidas do Colchão', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (133, 'Antialérgico', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (134, 'Observações', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (135, 'Autor(a)', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (136, 'Título', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (137, 'Subtítulo', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (138, 'ISBN', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (139, 'Páginas', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (140, 'Edição', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (141, 'Tipo de capa', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (142, 'Formato', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (143, 'Editora', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (144, 'Ano', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (145, 'Idioma', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (146, 'Processador', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (147, 'Modelo Processador', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (148, 'Cache', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (149, 'Memória RAM', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (150, 'Placa Mãe', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (151, 'HD', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (152, 'Drives', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (153, 'Placa de vídeo', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (154, 'Teclado', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (155, 'Mouse', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (156, 'Sistema Operacional', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (157, 'Conector', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (158, 'Memória (GB)', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (159, 'Resistente a Água', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (160, 'Resistente a Quedas', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (161, 'Leitor de Digitais - Biométrico', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (162, 'Proteção com Criptografia', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (163, 'Possui Tecnologia Ready Boost', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (164, 'Sistema Operacional Compatível', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (165, 'Softwares inclusos', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (166, 'Velocidade de impressão', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (167, 'Resolução de impressão', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (168, 'Ciclo de trabalho mensal', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (169, 'Tempo para a primeira Preto e Branco', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (170, 'Tempo para a primeira Colorida', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (171, 'Profundidade de Bits', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (172, 'Resolução de Digitalização', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (173, 'Tipo de papel suportado', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (174, 'Capacidade de papel suportado', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (175, 'Capacidade de entrada e saída de papel', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (176, 'Cartuchos/Toners compatíveis', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (177, 'Certificações', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (178, 'Nível de ruído', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (179, 'Agenda', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (180, 'Bobina inicial', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (181, 'Identificador de chamada', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (182, 'Memória de recepção sem papel', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (183, 'Número de discagem rápida', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (184, 'Rediscagem automática', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (185, 'Registro de chamadas', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (186, 'Transmissão programada', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (187, 'Transmissão internacional', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (188, 'Velocidade de transmissão', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (189, 'Velocidade/Modem', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (190, 'Sistema de compressão', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (191, 'Tipo de impressão', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (192, 'Modo de discagem', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (193, 'Viva-voz', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (194, 'Secretária eletrônica', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (195, 'Acompanha ramal', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (196, 'Expansível até', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (197, 'Conferência de chamadas', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (198, 'Ajuste no volume da campainha', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (199, 'Fixável na parede', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (200, 'Faixa etária', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (201, 'Diâmetro do rotor principal', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (202, 'Diâmetro do rotor de cauda', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (203, 'Tempo de vôo', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (204, 'Tempo de Recarga', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (205, 'Distância de alcance', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (206, 'Altura de vôo', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (207, 'Rádio', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (208, 'Mídias compatíveis', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (209, 'Função Repeat', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (210, 'Iluminação das teclas', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (211, 'Painel removível', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (212, 'Forração removível', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (213, 'Forração lavavel', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (214, 'Número De Canais', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (215, 'Potência Máx.', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (216, 'Sensibilidade de Entrada', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (217, 'Distorção Harmônica Total (THD)', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (218, 'Separação entre Canais (Crosstalk)', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (219, 'Relação Sinal/Ruído', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (220, 'Resposta De Frequência (Full Range)', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (221, 'Crossover', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (222, 'Impedância de Entrada', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (223, 'Sistema de Proteção', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (224, 'Tensão de Alimentação Mínima', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (225, 'Tensão de Alimentação Máxima', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (226, 'Consumo em Repouso', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (227, 'Consumo Máximo Musical', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (228, 'Consumo Máximo em Sinal Senoidal', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (229, 'Uso Ideal', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (230, 'Pré-encolhida', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (231, 'Lavagem', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (232, 'Tamanho', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (233, 'Manga Tipo', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (234, 'Gola', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (235, 'Tecido Gola', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (236, 'Ombro Tamanho', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (237, 'Busto Tamanho', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (238, 'Manga Tamanho', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (239, 'Cintura Tamanho', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (240, 'Quadril Tamanho', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (241, 'Coxa Tamanho', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (242, 'Canela Tamanho', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (243, 'Gancho frente Tamanho', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (244, 'Gancho traseiro Tamanho', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (245, 'Entrepernas Tamanho', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (246, 'Bolsos', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (247, 'Fechamento/Abertura', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (248, 'Numeração', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (249, 'Cabedal (Parte Superior Externa)', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (250, 'Solado', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (251, 'Lingueta', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (252, 'Palmilha', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (253, 'Forro', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (254, 'Ajuste', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (255, 'Tamanho do Cano', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (256, 'Tamanho do Salto', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (257, 'Embalagem', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (258, 'Diâmetro da Caixa', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (259, 'Profundidade da Caixa', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (260, 'Largura da Pulseira', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (261, 'Cor do mostrador', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (262, 'Material da Caixa', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (263, 'Material do Visor', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (264, 'Material da Pulseira', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (265, 'Prova d\'água', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (266, 'Forro', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (267, 'Movimento', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (268, 'Touch Screen', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (269, 'Vibra-call', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (270, 'Mostrador de Horas', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (271, 'Redes Sociais', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (272, 'Alarme anti-perda', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (273, 'Altimetro', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (274, 'Hodometro', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (275,'Sincronização', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (276, 'Tamanho do visor (Polegadas)', NOW(), NOW());

INSERT INTO features (id, feature_name, created, modified)
VALUES (277, 'Diagonal Visual (Cm)', NOW(), NOW());

## 585 registros na tabela "product_features" --------------------------------------------

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Android 4.4 KitKat', 9, 1, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Barra', 10, 1, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Traseira 13MP e Frontal 5MP', 11, 1, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Sim', 12, 1, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Sim', 13, 1, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Rádio FM,  MP3 Player', 14, 1, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Sim', 15, 1, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('MicroSD até 64 GB', 16, 1, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Não', 17, 1, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Sim', 18, 1, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Sim', 19, 1, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Sim', 20, 1, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Não', 21, 1, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Sim', 22, 1, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('USB 2.0, Bluetooth 4.0, Wi-Fi 802.11 a/b/g/n 2.4+5GHz, HT40, NFC', 23, 1, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Sim', 24, 1, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('SMS,  MMS,  E-mail', 25, 1, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Polifônicos,  MP3', 26, 1, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Quad Core de 1.2 Ghz', 27, 1, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('2GB', 28, 1, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Não', 29, 1, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('GSM,  3G,  4G', 30, 1, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Sim', 31, 1, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('GSM 850/900/1800/1900 MHz', 32, 1, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('sim', 33, 1, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Nano SIM', 34, 1, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('16GB Total sendo uma parte usada para o sistema operacional e aplicativos pré-instalados', 35, 1, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('1280 x 720', 36, 1, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('12,7', 37, 1, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Branco', 38, 1, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('- Aparelho Samsung Galaxy A5 4G Duos A500M/DS Branco - Tim
        - Carregador
        - Bateria
        - Cabo USB
        - Fone de Ouvido', 124, 1, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('12 meses', 6, 1, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('1.Para utilizar este celular é preciso ter um chip (vendido separadamente). Este aparelho
        está habilitado para que funcione com operadoras nacionais com Tecnologia GSM (Vivo, Oi, Tim, Claro,
        Brasil Telecom, CTBC, Sercomtel, Telemig).
        2.Este é um celular Dual Chip, ou seja, funciona com dois chips no mesmo aparelho.
        3.O desempenho da bateria pode variar dependendo de diversos fatores como: configuração do celular,
        da rede, potência do sinal e temperatura de operação.
        4. A capacidade de memória interna ROM ( Read-Only Memory ) disponível ao usuário é menor que a
        capacidade especificada devido ao sistema operacional e às aplicações padrões que já vem instaladas
        no aparelho, ocupando parte da memória. A capacidade disponível pode variar ao atualizar o aparelho.
        5.O compartimento do chip 2 também funciona como compartimento de cartão de
        memória. Entretanto, você não pode colocar ambos os chips e o cartão de memória
        ao mesmo tempo.
        ATENÇÃO: A rede 4G no Brasil é limitada. Consulte uma operadora de telefonia móvel para obter
        informações de pacotes de dados e cidades de cobertura.', 39, 1, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('13,93 (Cm)', 1, 1, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('6,97 (Cm)', 2, 1, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('6,70 (Cm)', 3, 1, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('123,00 (Gramas)', 4, 1, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('4444-4444 (capitais e grandes centros) / 0800-444-444 (demais cidades e regiões)', 73, 1, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Preta', 7, 2, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Para uso de Rede sem Fio a Semp Toshiba tem os seguintes adaptadores Wi-Fi homologados
        (não inclusos): TP-LINK modelo: TL-WN722N (Versão 1.10), TL-WN723N (Versão 2.0), TL-WN723N
        (Versão 3.0), TL-WN725N (Versão 2.0), TL-WN821N (Versão 4.2), TL WN822N (Versão 3.0) e
        TL-WN823N (Versão 1.2).', 22, 2, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('32', 276, 2, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('1366X768', 36, 2, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Sim', 41, 2, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('2', 49, 2, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('2', 54, 2, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Full Screen/Widescreen', 142, 2, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('80', 277, 2, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('4:3, cinema, legenda, nativo, tela cheia, panorâmico e full view.', 59, 2, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Sim', 43, 2, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Sim', 45, 2, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Sim', 50, 2, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('47,4 (Cm)', 1, 2, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('73,2 (Cm)', 2, 2, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('20 (Cm)', 3, 2, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('6,7 (Kg)', 4, 2, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Android', 156, 3, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('5.2', 276, 3, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('4G', 30, 3, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Sim', 64, 3, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Sim', 20, 3, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('13MP', 13, 3, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('2.5 (GHz)', 27, 3, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('13,97 (Cm)', 1, 3, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('7,19 (Cm)', 2, 3, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('0,99 (Cm)', 3, 3, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('144 (Gramas)', 4, 3, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('110V ou 220V ', 61, 4, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('7 funções: Triturar Gelo, Processar Alimentos, Três velocidades manuais,
        Pulsar Rápido e Pulsar Lento, ', 67, 4, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('600 (Watts)', 215, 4, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Metal e vidro', 8, 4, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('1,25 (Litros)', 65, 4, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('35 (Cm)', 1, 4, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('26 (Cm)', 2, 4, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('22 (Cm)', 3, 4, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('2 (Kg)', 4, 4, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('3 Horas', 80, 5, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('01 Mini MP3 player + Fones de Ouvido + Cabo USB', 124, 5, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('MP3, WMA', 76, 5, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('4,5 (Cm)', 1, 5, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('3,2 (Cm)', 2, 5, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('1,4 (Cm)', 3, 5, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Mp3 , WMA, WAV', 76, 6, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('20HZ / 20KHZ ', 32, 6, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Cartão Micro SD (Não Acompanha)', 82, 6, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Multimóveis', 69, 7, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Tradicional', 87, 7, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('71 a 110 (Kg)', 88, 7, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Solteiro', 89, 7, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('MDP', 8, 7, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Metal', 91, 7, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('90,5 (Cm)', 1, 7, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('193,5 (Cm)', 2, 7, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('85,5 (Cm)', 3, 7, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('38,5 (Kg)', 4, 7, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Tubos de aço carbono', 93, 8, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Pintura Epóxi', 92, 8, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Vidro incolor temperado com 6 mm', 95, 8, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('MDP de 12 mm, revestidos com espuma e corino', 94, 8, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Recomendamos que a montagem seja feita por um profissional.', 134, 8, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('80 (Cm)', 1, 8, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('80 (Cm)', 2, 8, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('77 (Cm)', 3, 8, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('13', 96, 9, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('12 (Kg)', 4, 9, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('1 Açúcar Refinado pt 1Kg SOLITO,
        1 Arroz Agulhinha T.1 pt (5Kg) SOLITO,
        1 Biscoito Recheado pt 125g VISCONTI,
        1 Café Torrado e Moído Extra Forte pt 250g JARDIM,
        2 Composto Lacteo c/ Açúcar (Leite em Pó) pt 200g MERILU,
        1 Feijão Carioca T.1 pt 1kg 5 ESTRELAS,
        1 Fubá Tipo Mimoso pt 500g AGROBAL / ZANIN,
        1 Goiabada Tablete pt 300g VAL / PLOKY,
        1 Macarrão Parafuso/Pene c/ Ovos pt 500g ADRIA,
        1 Óleo de Soja Refinado pet 900ml LEVE / CONCORDIA,
        1 Molho de Tomate tp 340g STELLA DORO,
        1 Sal Refinado pt 1kg NOBRE,
        1 Embalagem Papelão nr.05 RV', 124, 9, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('966 (Gramas)', 4, 10, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Sortidos: Laranja, Morango, Limão', 99, 10, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('3 Anos', 100, 10, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('- 50 BRIGADEIROS
        - 25 BEIJINHOS DE COCO
        - 25 BRIGADEIROS DE MORANGO ( BICHO DE PÉ )', 124, 11, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('100', 96, 11, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('tomatão, tomate-francês, tomate-de-árvore, sangue-de-boi, tomate-japonês, tomate-inglês', 105, 12, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Andes na América do Sul', 106, 12, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Pequeno porte', 108, 12, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Não requer cuidados especiais, mas que sofre bastante com as geadas pelo que necessita de
        ser protegida no Inverno. Propaga-se por semente e por estacas dos ramos.', 112, 12, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Proteção e alimento', 102, 13, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Flores perfumadas, pequenas, brancas com miolo alaranjado e ricas em pólen e néctar', 109, 13, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Plantado em vasos ou cercas (Cerca viva)', 101, 13, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Adubo de floração', 115, 13, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Synsepalum Dulcificum Var. Giganteum', 103, 14, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Porte Médio 35 a 45cm', 108, 14, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Não exige podas', 114, 14, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Regas regulares com pouca água, quando o substrato estiver seco', 113, 14, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Em pleno sol ou meia-sombra (apenas sol da manhã ou da tarde)', 110, 14, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('África Ocidental', 106, 14, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Arbusto caducifólio de pequeno porte e crescimento lento', 107, 14, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Brancas e pequenas', 109, 14, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Preferencialmente ácido – com pH de 4,5 a 5,8; fértil e bem drenado', 111, 14, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Tropical ou subtropical', 112, 14, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Trimestral com NPK 10-10-10', 115, 14, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Consumida in natura, ou em bolos, pães, sucos, iogurtes, etc. Uma colher de sopa possui em torno de 50cal apenas.', 102, 15, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('1 (Kg)', 4, 15, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Lycium barbarum', 103, 15, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('China e regiões do Himalaia', 106, 15, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('500 (Gramas)', 4, 16, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Hibiscus sinensis', 103, 16, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Usado em chás', 102, 16, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Johnnie Walker', 69, 17, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('40%', 116, 17, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Escócia', 106, 17, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('1 Whisky', 124, 17, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('1 Litro', 117, 17, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('EMPÓRIO M&L COM. ALIM. BEBIDAS LTDA.', 74, 17, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('0800 -704 -7200', 73, 17, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('5000267116310', 75, 17, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('1 Litro', 117, 18, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('1 Vodka Absolut Unique - Ed Limitada', 124, 18, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Limitada, numerada e exclusivas', 140, 18, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('750 ml', 117, 19, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Coupage: 33% Parellada, 33% Macabeo e 33% Xarello', 118, 19, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('6 a 7ºC', 121, 19, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('O licor de expedição se elabora com vinho do mesmo coupage, envelhecido 12 meses
        em barrica.', 120, 19, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Ligeiros aromas florais e consistente estrutura em boca, devido ao período de
        criança.', 119, 19, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('12 Latas', 96, 20, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('355 ml (cada lata)', 117, 20, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Coca-cola com Baunilha', 99, 20, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('12 Latas', 96, 21, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('355 ml (cada lata)', 117, 21, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Laranja', 99, 21, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('12 Latas', 96, 22, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('355 ml (cada lata)', 117, 22, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Gengibre (Ginger ale)', 99, 22, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Canadá', 106, 22, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Canada Dry', 69, 22, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Delonghi', 69, 23, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Sim', 122, 23, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Sim', 123, 23, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('110V', 61, 23, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('1750W', 215, 23, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('1,75kw/h', 63, 23, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Azul e Branco', 72, 23, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('30,2 (Cm)', 1, 23, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('24 (Cm)', 2, 23, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('39 (Cm)', 3, 23, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('3,85 (Kg)', 4, 23, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('1 Ferro de passar e 1 manual de instruções.', 124, 23, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('VVX1475-127V Ferro de Passar à Vapor DL', 10, 23, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Queen', 97, 24, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('100% Algodão', 8, 24, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('1,58x1,98x0,30 cm (Altura x Largura x Profundidade)', 127, 24, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('50x70 cm (Altura x Largura)', 128, 24, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Sim', 129, 24, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Não', 130, 24, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Sim', 131, 24, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('1,58x1,98x30 cm (Altura x Largura x Profundidade)', 132, 24, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Não', 133, 24, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('1.98 cm', 1, 24, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('1.58 cm', 2, 24, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('0.3 cm', 3, 24, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('2,40 M', 1, 25, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('1,80 M', 2, 25, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Algodão', 8, 25, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Diversas', 38, 25, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Utilize a manta aberta durante a semana para a proteção do seu sofá e dobrada
        nos fins de semana decorar. Assim seu sofá ficará mais tempo bonito e apresentável.', 102, 25, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Divergente', 136, 26, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Veronica Roth', 135, 26, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Juvenil', 97, 26, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Rocco', 143, 26, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Português', 145, 26, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('2012', 144, 26, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Brochura', 92, 26, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Médio', 142, 26, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('13,4 cm', 1, 26, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('20 cm', 2, 26, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('7 cm', 3, 26, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Volume 1: 9788579801313, Volume 2: 9788579801314, Volume 3: 9788579801310,
        Volume 4: 9788579801311', 138, 26, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Volume 1: 500, Volume 2: 520, Volume 3: 530, Volume 4: 540', 139, 26, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('4', 96, 26, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('5', 96, 27, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('O Diário De John Winchester- Capa Dura, O Livro Dos Monstros- Espíritos - Demônios E Ghouls,
        O Guia De Caça De Bobby Singer, Nunca Mais E Guerra Dos Filhos', 136, 27, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('22.50 cm', 1, 27, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('16.00 cm', 2, 27, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('8.50 cm', 3, 27, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('1.65 Kg', 4, 27, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Gryphus', 143, 27, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('0742832415231', 138, 27, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('742832415231', 75, 27, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Português', 85, 27, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Kit (envolvendo os livros), Brocura (capa dos livros)', 92, 27, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('A Lebre e a Raposa / A Raposa e o Galo / A Cigarra e a Formiga / A Lebre e a Tartaruga /
        O Lobo Disfrançado / O Pastor Brincalhão / Os Músicos de Bremen e O Leão e o Camundongo', 136, 28, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('8', 96, 28, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Bicho Esperto', 143, 28, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('12 páginas cada livro', 139, 28, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('18 cm', 1, 28, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('13 cm', 2, 28, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Infantil', 97, 28, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Positivo', 69, 29, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Intel Atom', 146, 29, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Quad Core', 147, 29, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('2MB', 148, 29, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('1GB', 149, 29, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Positivo', 150, 29, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('16GB', 151, 29, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Não', 49, 29, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Não se aplica ao produto', 152, 29, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('10.1', 276, 29, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Áudio de alta definição (HD Áudio), Microfone e alto-falantes estéreo embutidos', 14, 29, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Sim', 22, 29, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Sim', 20, 29, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Rede sem fio IEEE 802.11 b/g/n TM e Bluetooth TM 4.0', 23, 29, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Vídeo Processamento de vídeo integrado Intel HD Graphics / Aceleração gráfica integrada de
        vídeos em alta definição (HD) e suporte Microsoft DirectX 11 e OpenGL 4.0', 153, 29, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Português-Brasil', 154, 29, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Touchpad-2botões', 155, 29, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Windows 8.1', 156, 29, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('18,4 Cm', 1, 29, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('25,5 Cm', 2, 29, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('1,7 Cm', 3, 29, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('1,09 Kg', 4, 29, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('USB', 157, 30, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('8', 158, 30, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Não', 159, 30, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Não', 160, 30, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Não', 161, 30, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Não', 162, 30, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Não', 163, 30, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Widonws 98 e superiores/Mac 0S 9.0 e superiores', 164, 30, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('1,9 cm', 2, 30, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('1,3 cm', 3, 30, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('5,5 cm', 1, 30, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('10 gramas', 4, 30, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('1 TB (1000 GB)', 158, 31, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Windows,  Mac', 164, 31, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('- Samsung SecretZone™: aplicação de segurança que previne o acesso a arquivos privativos
        em área designada SecretZone™ - SafetyKey™: protege seus dados com senha', 165, 31, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('USB de alta velocidade (2.0 e 3.0)', 157, 31, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Não necessita de alimentação externa: direto da porta USB', 70, 31, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('- HD Externo Portátil Samsung
        - Cabo USB
        - Guia de instalação rápida', 124, 31, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Preto', 7, 31, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Bivolt 110V / 220V', 61, 31, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('3 meses', 6, 31, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('2,00 Cm', 1, 31, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('8,00 Cm', 2, 31, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('11,00 Cm', 3, 31, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('279,00 Gramas', 4, 31, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('TA0703G', 10, 32, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Dual Core', 147, 32, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Preto', 7, 32, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('3G', 23, 32, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Android 4.1', 156, 32, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('7', 276, 32, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('1024 x 600', 36, 32, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Capacitivo', 268, 32, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('16 GB', 35, 32, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Cartão micro SD', 82, 32, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('32 Gb', 196, 32, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('0,3 Mega Pixels', 13, 32, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('2 Mega Pixels', 12, 32, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Bivolt', 61, 32, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('12.6 cm', 1, 32, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('20 cm', 2, 32, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('1 cm', 3, 32, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('347 gramas', 4, 32, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('12 meses', 6, 32, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('- 1 Manual Simplificado
        - 1 Cabo USB
        - 1 Fone de Ouvido
        - 1 Carregador
        - 1 Tablet', 124, 32, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('HP', 69, 33, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('A9U24A#AK4.', 10, 33, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Branco', 38, 33, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Jato de tinta', 191, 33, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('- Impressora
        - Copiadora
        - Scanner', 67, 33, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('LCD monocromático de alta resolução.', 40, 33, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('2 (5 cm)', 276, 33, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Wi-fi, USB', 23, 33, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('- Preto (ISO): Até 7 ppm; Preto (rascunho, A4): Até 20 ppm; Preto (rascunho, carta): Até 20 ppm;
        - Cor (ISO): Até 4 ppm; Colorido (rascunho, A4): Até 16 ppm; Colorido (rascunho, carta): Até 16 ppm;', 166, 33, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('- Preto: Até 600 x 600 dpi renderizados;
        - Cor: Até 4800 x 1200 dpi otimizados e 1200 X 1200 dpi de entrada.', 167, 33, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Mensalmente, A4: Até 1000 páginas.', 168, 33, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Saída da primeira página em preto (A4, pronta): Velocidade máxima 17 segundos;', 169, 33, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Saída da primeira página em cores (A4, pronta): Até 24 segundos.', 170, 33, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('256; 24 bits.', 171, 33, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Hardware: Até 1200 x 1200 dpi; Ótica: Até 1200 dpi; Resolução de digitalização aprimorada:
        Até 1200 dpi.', 172, 33, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Papel (brochura, jato de tinta, normal), papel fotográfico, envelopes, etiquetas, cartões (saudações).
        A4; B5; A5; A6; Envelope DL; Carta; Ofício; 4 x 6 pol.; 5 x 7 pol.; 8 x 10 pol.; Envelopes núm. 10', 173, 33, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('- Bandeja de entrada para 60 folhas;
        - Bandeja de saída para 25 folhas;
        - Opções de frente e verso: Frente e verso manual;
        - Alimentador de envelopes: Não;
        - Bandejas para Papel Standard: 1.', 174, 33, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Capacidade máxima de entrada: Até 60 folhas ofício, Até 10 folhas Etiqueta, Até 20 folhas papel
        fotográfico, Até 20 folhas Foto 4x6, Até 20 cartões, Até 5 envelopes. Capacidade máxima de saída: Até 25
        folhas ofício, Até 10 folhas Etiqueta, Até 20 folhas papel fotográfico, Até 20 cartões, Até 5 envelopes.', 175, 33, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('- Tricolor CZ106AB HP 662XL
        - Tricolor CZ104AB HP
        - Preto CZ103AB HP 662
        - Preto CZ105AB HP 662XL', 176, 33, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Energy Star', 177, 33, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('- Emissões de potência acústica: 6,1 B(A);
        - Emissões de Pressão Acústica: 55 dB(A).', 178, 33, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('25,219 Cm', 1, 33, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('55,219 Cm', 2, 33, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('42,523 Cm', 3, 33, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('3,6 Kg', 4, 33, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('100 Nome e Números', 179, 34, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('10 metros', 180, 34, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Sim', 181, 34, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Até 28 páginas', 182, 34, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('10 Números', 183, 34, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Até 5 Vezes', 184, 34, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('10 últimas', 185, 34, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Sim', 186, 34, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Sim', 187, 34, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('aprox 15 seg/ pág (modo original)', 188, 34, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('9.600 / 7.200 / 4.800 / 2.400 bps', 189, 34, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Modifies Huffman (MH), Modifies Read (MR)', 190, 34, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Impressão térmica', 191, 34, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Tom(DTMF)/Pulso', 192, 34, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('352 Cm', 1, 34, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('224 Cm', 2, 34, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('121 Cm', 3, 34, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('2.7 Kg', 4, 34, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Sim', 181, 35, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('até 20', 185, 35, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Não', 193, 35, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Não', 194, 35, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Não', 195, 35, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Sim', 197, 35, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('4 Ramais', 196, 35, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Sim', 198, 35, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Não', 199, 35, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Redial,  Localizador de fone (Paging)', 67, 35, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Até 10 horas', 80, 35, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Até 180 horas', 81, 35, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('12 meses', 6, 35, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Infantil', 200, 36, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('01 - Tom Pequeno, 01 - Tom medio e tom grande, 01 - Prato - Suporte para Prato,
        01 - Par de baquetas Marca Conthey By Kids', 124, 36, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('36 cm', 1, 36, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('15 cm', 2, 36, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('35 cm', 3, 36, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('5 Kg', 4, 36, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Plastico e metal', 8, 36, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('192 mm', 201, 37, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('36 mm', 202, 37, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('5 cm', 1, 37, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('8,2 cm', 2, 37, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('22 cm', 3, 37, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Bateria: 3.7V 120mAh Li-Po', 70, 37, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('7-8 minutos', 203, 37, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('30 mimutos', 204, 37, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('120 metros', 205, 37, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('15 metros', 208, 37, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('- 1 Helicóptero V911 4CH.
        - 1 Controle remoto 4CH.
        - 1 Cabo usb.
        - 1 Base de recarga de bateria.
        - 2 Baterias.
        - 1 Manual de instruções.
        - 1 Hélice traseira "extra" para reposição.
        - 1 Conjunto de hélice principal "extra" para reposição.', 124, 37, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('E.V.A. Atoxico', 8, 38, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('40 placas de 9 cm x 9 cm', 96, 38, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Diversas', 7, 38, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Branco', 7, 39, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('18 cm', 1, 39, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('30 cm', 2, 39, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('3 pilhas AA (Não inclusas)', 70, 39, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('2.7', 276, 40, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('320 x 240', 36, 40, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('4 canais de 21W RMS', 58, 40, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Flip Down', 211, 40, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('USB Frontal', 157, 40, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Cor vermelha', 210, 40, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('1 Ano', 6, 40, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('- 1 DVD H-Buster
        - 1 Controle Remoto com Bateria
        - 1 Chicote de Conexão ISO
        - 1 Kit Instalação
        - 1 Moldura de Acabamento
        - 1 Estojo', 124, 40, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('MDF', 8, 41, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Carpete e Courvin.', 92, 41, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('3 (Subwoofer 12" JBL Selenium Flex 12SW14A / Super Tweeter JBL Selenium ST200
        Driver JBL Selenium D200)', 96, 41, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Couro sintético', 8, 42, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Único', 232, 42, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('- 2 Capas para os bancos dianteiros
        - 1 Capa para o assento traseiro
        - 1 Capa para o encosto traseiro
        - 4 Capas para os encostos de cabeça', 124, 42, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('- Lavar somente a mão em temperatura máxima 40°C, Secagem  por  gotejamento;
        - Não alvejar/não branquear;
        - Não secar em tambor; Não passar; Não limpar a seco.', 134, 42, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('MDF', 8, 43, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Carpete e Courvin.', 92, 43, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('3 (Subwoofer 12" JBL Selenium Flex 12SW14A / Super Tweeter JBL Selenium ST200
        Driver JBL Selenium D200)', 96, 43, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('54 mm', 1, 44, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('168 mm', 2, 44, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('255 mm', 3, 44, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('1,60 Kg', 4, 44, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Taramps', 69, 44, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('4', 214, 44, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Brasil', 98, 44, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('TS-800x4', 10, 44, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('12 Meses', 6, 44, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Doméstico / Hobby', 102, 45, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('142', 96, 45, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Trabalhos manuais, apertar, parafusar e desparafusar.', 67, 45, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('6.4 cm', 1, 45, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('24 cm', 2, 45, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('31.5 cm', 3, 45, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('1.5 kg', 4, 45, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('3 meses', 6, 45, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('- 16 Chaves Allen
        - 20 bits
        - 2 mini Chave de fenda
        - 1 Alicate de bico 6?
        - 1 Chave de teste
        - 1 Martelo 250 g
        - 1 Punho para serra manual
        - 1 Lamina de serra
        - 1 Estilete
        - 1 Fita isolante
        - 1 Chave porta Bits
        - 6 Chave de fenda de precisão
        - 90 pequenas peças ( parafusos, porcas e conectores)', 124, 45, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Bracol Comercial e Importadora Ltda', 69, 45, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('(47) 3373-0648', 72, 45, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Aço cromo vanádio e aço carbono inoxidável', 8, 46, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Termoplástico', 262, 46, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('110', 96, 46, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('- 01 Alicate de corte diagonal 6"
        - 01 Alicate de bico meia-cana 8"
        - 01 Alicate bomba d´água 10"
        - 01 Adaptador para bits com cabo e catraca encaixe de 1/4"
        - 07 Bits fenda: 3,5 (02 peças) - 4 (02 peças) - 5,5 - 6,5 – 8 mm
        - 03 Bits quadradas: S1 - S2 - S3
        - 08 Bits phillips: #0 (02 peças) - #1 (02 peças) - #2 (02 peças) - #3 (02 peças)
        - 02 Adaptadores
        - 07Bits torx: T10 - T15 - T20 - T25 - T27 - T30 - T40
        - 03 Bits pozidriv: PZ1 - PZ2 - PZ3
        - 04 Bits tri-wing: 1 – 2 – 3 - 4
        - 06 Bits hexagonais: 2 – 3 – 4 – 5 – 6 – 7 mm
        - 01 Cabo T de 10" com extensão encaixe de 1/2"
        - 01 Catraca reversível de 10” com encaixe de 1/2"
        - 01 Catraca reversível de 6” com encaixe de 1/4"
        - 02 Chaves de fenda: 5,5 x 75 mm - 6,5 x 100mm
        - 02 Chaves phillips: #1 x 75 mm - #2 x 100 mm
        - 11 Chaves combinadas: 8 – 9 – 10 – 11 – 12 – 13 – 14 – 15 – 17 – 18 – 19 mm
        - 08 Chaves hexagonais: 1,5 – 2 - 2,5 – 3 – 4 – 5 - 5,5 – 6 mm
        - 01 Extensão de 5" com encaixe de 1/2"
        - 01 Extensão de 2" com encaixe de 1/4"
        - 01 Extensão de 4" com encaixe de 1/4"
        - 01 Extensão flexível 6" 1/4"(M) x 1/4"(F)
        - 01 Junta universal com encaixe de 1/2"
        - 01 Junta universal com encaixe de 1/4"
        - 02 Soquetes de vela: 16 mm e 21 mm
        - 15 Soquetes sextavados com encaixe de 1/2": 10 – 11 – 12 – 13 – 14 – 15 – 17 – 18 – 19 – 20 – 21 – 22 – 23 – 24 – 27 mm
        - 11 Soquetes sextavados com encaixe de 1/4": 4 – 5 – 6 – 7 – 8 – 9 – 10 – 11 – 12 – 13 – 14 mm
        - 01 Suporte para as chaves hexagonais
        - 04 Suportes para os bits
        - 01 Maleta com berços e identificação de medidas', 124, 46, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('12 meses (3 meses de garantia legal por lei, contando a partir da data de emissão
        da Nota Fiscal de Venda e 9 meses de garantia concedido pelo fabricante contra
        defeito de fabricação)', 6, 46, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Mayle', 69, 46, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('110', 96, 47, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('- 1 Furadeira de impacto
        - 65 Buchas
        - 1 Chave Magnética
        - 1 Estilete
        - 1 Trena
        - 1 Barra de Extensão
        - 1 Ponteira
        - 5 Brocas Para Metal
        - 5 Brocas Para Concreto
        - 5 Brocas Para Madeira
        - 1 Chave Ajustável 200mm
        - 1 Alicate Universal
        - 1 Empunhador
        - 1 Furadeira de Impacto
        - 11 Ponteiras
        - 8 Soquetes
        - 1 Martelo
        - 1 Limitador
        - 1 Mandril', 124, 47, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('2 velocidades: Velocidade 1: 2200 RPM, Velocidade 2: 2600 RPM', 68, 47, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('1 Ano', 6, 47, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('220 Volts', 61, 47, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('100% Algodão', 8, 48, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Sim', 230, 48, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Água fria', 231, 48, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('M, G, GG', 232, 48, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Redonda', 234, 48, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('100% Algodão', 8, 49, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Sim', 230, 49, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Água fria', 231, 49, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('M, G, GG', 232, 49, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Redonda', 234, 49, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Com imagens diversas', 131, 49, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('100% Algodão', 8, 50, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Sim', 230, 50, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Água fria', 231, 50, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('G', 232, 50, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Polo', 234, 50, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Manga Comprida', 233, 50, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('40 Cm', 236, 50, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('59 Cm', 238, 50, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('66 Cm', 237, 50, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Sim', 230, 51, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Comum', 231, 51, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('44', 232, 51, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('45 Cm', 239, 51, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('55,5 Cm', 240, 51, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('33,5 Cm', 241, 51, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('28,5 Cm', 243, 51, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('38,5 Cm', 244, 51, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('86', 245, 51, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Jeans', 8, 51, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Preto', 38, 51, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('RIP STOP SUPER (35% Algodão / 65% Poliester)', 8, 52, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Preto', 38, 52, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Sim', 230, 52, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Comum', 231, 52, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('44', 232, 52, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('45 Cm', 239, 52, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('55,5 Cm', 240, 52, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('33,5 Cm', 241, 52, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('28,5 Cm', 243, 52, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('38,5 Cm', 244, 52, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('86', 245, 52, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('3', 96, 53, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('3 Cinto em Gorgorão - Café/Troy ', 124, 53, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Gorgorão (cinta) e Metal (fivela)', 8, 53, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Preto, Café, Taupe', 38, 53, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Sandro Moscoli', 69, 53, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Masculino', 97, 54, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Dia a Dia', 102, 54, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Sintético', 8, 54, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Cardaço', 247, 54, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('42', 248, 54, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Engineered mesh', 249, 54, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Com lâminas de polímero', 250, 54, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('331 gramas', 4, 54, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Adiwear, Fitframe', 30, 54, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('3 meses (Contra Defeito de Fabricação)', 6, 54, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Masculino', 97, 55, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Dia a Dia', 102, 55, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Sintético', 8, 55, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Cardaço', 247, 55, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('42', 248, 55, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Engineered mesh', 249, 55, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Com lâminas de polímero', 250, 55, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('331 gramas', 4, 55, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Adiwear, Fitframe', 30, 55, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('3 meses (Contra Defeito de Fabricação)', 6, 55, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Masculino', 97, 56, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Dia a Dia', 102, 56, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Sintético', 8, 56, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Cardaço', 247, 56, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('42', 248, 56, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Engineered mesh', 249, 56, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Com lâminas de polímero', 250, 56, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('331 gramas', 4, 56, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Adiwear, Fitframe', 30, 56, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('3 meses (Contra Defeito de Fabricação)', 6, 56, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Masculino', 97, 57, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Dia a Dia', 102, 57, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Couro sintético', 8, 57, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Cardaço', 247, 57, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('42', 248, 57, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Engineered mesh', 249, 57, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Com lâminas de polímero', 250, 57, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('331 gramas', 4, 57, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('3 meses (Contra Defeito de Fabricação)', 6, 57, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Feminino', 97, 58, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Eventos de gala', 102, 58, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Sintético', 8, 58, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Encaixe', 247, 58, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('38', 248, 58, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('331 gramas', 4, 58, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('3 meses (Contra Defeito de Fabricação)', 6, 58, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('3 Cm', 255, 58, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('15 Cm', 256, 58, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Masculino', 97, 59, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Dia a Dia', 102, 59, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Couro legitimo', 8, 59, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Cardaço', 247, 59, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('42', 248, 59, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Engineered mesh', 249, 59, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Com lâminas de polímero', 250, 59, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('331 gramas', 4, 59, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('3 meses (Contra Defeito de Fabricação)', 6, 59, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Invicta', 69, 60, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Caixa oficial da Invicta', 257, 60, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('6981', 10, 60, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('49 mm', 258, 60, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('17 mm', 259, 60, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('26mm', 260, 60, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Preto', 261, 60, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Aço Inoxidável', 262, 60, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Cristal Mineral', 263, 60, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Poliuretano', 264, 60, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('100 metros', 265, 60, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Quartz Suiço (Caliber: 5040.D)', 267, 60, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('12 meses', 6, 60, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Sim', 268, 61, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Sim', 269, 61, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('4 Modelos (2 Digitais e 2 Analogicos)', 270, 61, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Sim (apenas android)', 271, 61, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Sim (avisa quando o celular se distancia do relógio)', 272, 61, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Sim', 273, 61, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Sim', 274, 61, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Sim', 275, 61, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Não informado', 69, 62, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Estojo', 257, 62, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Ref: 6981', 10, 62, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('49 mm', 258, 62, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('17 mm', 259, 62, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('26mm', 260, 62, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Preto', 261, 62, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Aço Inoxidável', 262, 62, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Cristal Mineral', 263, 62, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Poliuretano', 264, 62, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('100 metros', 265, 62, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Quartz Suiço (Caliber: 5040.D)', 267, 62, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('12 meses', 6, 62, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Não informado', 69, 63, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Estojo', 257, 63, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Ref: 6981', 10, 63, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('49 mm', 258, 63, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('17 mm', 259, 63, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('26 mm', 260, 63, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Preto', 261, 63, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Aço Inoxidável', 262, 63, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Cristal Mineral', 263, 63, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Couro', 264, 63, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('100 metros', 265, 63, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Quartz Suiço (Caliber: 5040.D)', 267, 63, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('12 meses', 6, 63, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Couro', 9, 64, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Ajsutavel de 15 a 23 Cm', 232, 64, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Borracha (Pulseira) e Metal (feicho)', 9, 65, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Ajsutavel de 19 Cm', 232, 65, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Metal com detalhes em pedras', 9, 66, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Ajsutavel de 15 a 23 Cm', 232, 66, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('10', 96, 67, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('10 Resmas de papel A4 75 gramas Reciclado (cada resma com 500 folhas)', 124, 67, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Off Set, Tipografia, Serigrafia, Relevo Seco, Hot Stamping ,Jato de tinta e Laser', 191, 67, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('6', 96, 68, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('05 CARIMBOS PERSONALIZADOS AUTOMÁTICOS + 01 TUBO DE TINTA 30ml', 124, 68, NOW(), NOW());

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Diversas', 7, 68, NOW(), NOW());

## 3 registros na tabela "media_types" --------------------------------------------------

INSERT INTO media_types(name_media_type , created, modified)
VALUES ('Foto', NOW(), NOW());

INSERT INTO media_types(name_media_type , created, modified)
VALUES ('Foto Principal', NOW(), NOW());

INSERT INTO media_types(name_media_type , created, modified)
VALUES ('Thumb', NOW(), NOW());

INSERT INTO media_types(name_media_type , created, modified)
VALUES ('Video', NOW(), NOW());

##  registros na tabela "medias" ------------------------------------------------------

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 1, 'http://localhost/PROJETOS/ShoppingResources/img/1/Samsung-Galaxy-A5-Duos-Branco-4G-Orange-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 1, 'http://localhost/PROJETOS/ShoppingResources/thumb/Samsung-Galaxy-A5-Duos-Branco-4G-Orange-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 1, 'http://localhost/PROJETOS/ShoppingResources/img/1/Samsung-Galaxy-A5-Duos-Branco-4G-Orange-2.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 1, 'http://localhost/PROJETOS/ShoppingResources/img/1/Samsung-Galaxy-A5-Duos-Branco-4G-Orange-3.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 2, 'http://localhost/PROJETOS/ShoppingResources/img/2/TV-LED-32-Smart-LiteUSB-HDMI-LE-3278i-Semp-Toshiba-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 2, 'http://localhost/PROJETOS/ShoppingResources/thumb/TV-LED-32-Smart-LiteUSB-HDMI-LE-3278i-Semp-Toshiba-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 2, 'http://localhost/PROJETOS/ShoppingResources/img/2/TV-LED-32-Smart-LiteUSB-HDMI-LE-3278i-Semp-Toshiba-2.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 3, 'http://localhost/PROJETOS/ShoppingResources/img/3/Motorola-Moto-X-Android-42-GPS-3G-2-Chips-13GHZ-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 3, 'http://localhost/PROJETOS/ShoppingResources/img/3/Motorola-Moto-X-Android-42-GPS-3G-2-Chips-13GHZ-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 3, 'http://localhost/PROJETOS/ShoppingResources/img/3/Motorola-Moto-X-Android-42-GPS-3G-2-Chips-13GHZ-2.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 3, 'http://localhost/PROJETOS/ShoppingResources/img/3/Motorola-Moto-X-Android-42-GPS-3G-2-Chips-13GHZ-3.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 3, 'http://localhost/PROJETOS/ShoppingResources/img/3/Motorola-Moto-X-Android-42-GPS-3G-2-Chips-13GHZ-4.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 3, 'http://localhost/PROJETOS/ShoppingResources/img/3/Motorola-Moto-X-Android-42-GPS-3G-2-Chips-13GHZ-5.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 4, 'http://localhost/PROJETOS/ShoppingResources/img/4/Liquidificador-e-Processador-Reverse-Red-Oster-110V-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 4, 'http://localhost/PROJETOS/ShoppingResources/img/4/Liquidificador-e-Processador-Reverse-Red-Oster-110V-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 4, 'http://localhost/PROJETOS/ShoppingResources/img/4/Liquidificador-e-Processador-Reverse-Red-Oster-110V-2.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 4, 'http://localhost/PROJETOS/ShoppingResources/img/4/Liquidificador-e-Processador-Reverse-Red-Oster-110V-3.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 4, 'http://localhost/PROJETOS/ShoppingResources/img/4/Liquidificador-e-Processador-Reverse-Red-Oster-110V-4.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 5, 'http://localhost/PROJETOS/ShoppingResources/img/5/MP3-Player-Shuffle-Clip-FM-Cabo-USB-Fone-Suporta-ate-8G-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 5, 'http://localhost/PROJETOS/ShoppingResources/thumb/MP3-Player-Shuffle-Clip-FM-Cabo-USB-Fone-Suporta-ate-8G-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 5, 'http://localhost/PROJETOS/ShoppingResources/img/5/MP3-Player-Shuffle-Clip-FM-Cabo-USB-Fone-Suporta-ate-8G-2.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 5, 'http://localhost/PROJETOS/ShoppingResources/img/5/MP3-Player-Shuffle-Clip-FM-Cabo-USB-Fone-Suporta-ate-8G-3.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 6, 'http://localhost/PROJETOS/ShoppingResources/img/6/Fone-de-Ouvido-Com-MP3-Player-C2-Sport-Entrada-Cartao-SD-micro-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 6, 'http://localhost/PROJETOS/ShoppingResources/thumb/Fone-de-Ouvido-Com-MP3-Player-C2-Sport-Entrada-Cartao-SD-micro-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 6, 'http://localhost/PROJETOS/ShoppingResources/img/6/Fone-de-Ouvido-Com-MP3-Player-C2-Sport-Entrada-Cartao-SD-micro-2.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 6, 'http://localhost/PROJETOS/ShoppingResources/img/6/Fone-de-Ouvido-Com-MP3-Player-C2-Sport-Entrada-Cartao-SD-micro-3.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 6, 'http://localhost/PROJETOS/ShoppingResources/img/6/Fone-de-Ouvido-Com-MP3-Player-C2-Sport-Entrada-Cartao-SD-micro-4.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 7, 'http://localhost/PROJETOS/ShoppingResources/img/7/Bi-Cama-0735-Branco-Brilho-Multimoveis-Bebe-Store-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 7, 'http://localhost/PROJETOS/ShoppingResources/thumb/Bi-Cama-0735-Branco-Brilho-Multimoveis-Bebe-Store-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 7, 'http://localhost/PROJETOS/ShoppingResources/img/7/Bi-Cama-0735-Branco-Brilho-Multimoveis-Bebe-Store-2.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 7, 'http://localhost/PROJETOS/ShoppingResources/img/7/Bi-Cama-0735-Branco-Brilho-Multimoveis-Bebe-Store-3.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 8, 'http://localhost/PROJETOS/ShoppingResources/img/8/Jogo-de-Mesa-com-4-Cadeiras-Tampo-de-Vidro-Temperado-Incolor-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 8, 'http://localhost/PROJETOS/ShoppingResources/thumb/Jogo-de-Mesa-com-4-Cadeiras-Tampo-de-Vidro-Temperado-Incolor-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 8, 'http://localhost/PROJETOS/ShoppingResources/img/8/Jogo-de-Mesa-com-4-Cadeiras-Tampo-de-Vidro-Temperado-Incolor-2.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 9, 'http://localhost/PROJETOS/ShoppingResources/img/9/Cesta-Basica-de-Alimentos-Popular-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 9, 'http://localhost/PROJETOS/ShoppingResources/thumb/Cesta-Basica-de-Alimentos-Popular-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 9, 'http://localhost/PROJETOS/ShoppingResources/img/9/Cesta-Basica-de-Alimentos-Popular-2.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 10, 'http://localhost/PROJETOS/ShoppingResources/img/10/Balas-Alemas-Fruit-Candies-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 10, 'http://localhost/PROJETOS/ShoppingResources/thumb/Balas-Alemas-Fruit-Candies-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 10, 'http://localhost/PROJETOS/ShoppingResources/img/10/Balas-Alemas-Fruit-Candies-2.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 11, 'http://localhost/PROJETOS/ShoppingResources/img/11/Kit-Brigadeiro-Premium-Festa-Infantil-100-Unidades-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 11, 'http://localhost/PROJETOS/ShoppingResources/thumb/Kit-Brigadeiro-Premium-Festa-Infantil-100-Unidades-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 11, 'http://localhost/PROJETOS/ShoppingResources/img/11/Kit-Brigadeiro-Premium-Festa-Infantil-100-Unidades-2.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 11, 'http://localhost/PROJETOS/ShoppingResources/img/11/Kit-Brigadeiro-Premium-Festa-Infantil-100-Unidades-3.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 11, 'http://localhost/PROJETOS/ShoppingResources/img/11/Kit-Brigadeiro-Premium-Festa-Infantil-100-Unidades-4.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 12, 'http://localhost/PROJETOS/ShoppingResources/img/12/Tamarillo-Tomate-de-Arvore-Gigante-Sementes-Fruta-para-Mudas-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 12, 'http://localhost/PROJETOS/ShoppingResources/thumb/Tamarillo-Tomate-de-Arvore-Gigante-Sementes-Fruta-para-Mudas-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 12, 'http://localhost/PROJETOS/ShoppingResources/img/12/Tamarillo-Tomate-de-Arvore-Gigante-Sementes-Fruta-para-Mudas-2.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 12, 'http://localhost/PROJETOS/ShoppingResources/img/12/Tamarillo-Tomate-de-Arvore-Gigante-Sementes-Fruta-para-Mudas-3.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 12, 'http://localhost/PROJETOS/ShoppingResources/img/12/Tamarillo-Tomate-de-Arvore-Gigante-Sementes-Fruta-para-Mudas-4.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 12, 'http://localhost/PROJETOS/ShoppingResources/img/12/Tamarillo-Tomate-de-Arvore-Gigante-Sementes-Fruta-para-Mudas-5.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 13, 'http://localhost/PROJETOS/ShoppingResources/img/13/Frutos-de-Ora-Pro-Nobis-10-Frutos-Frete-Gratis-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 13, 'http://localhost/PROJETOS/ShoppingResources/thumb/Frutos-de-Ora-Pro-Nobis-10-Frutos-Frete-Gratis-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 13, 'http://localhost/PROJETOS/ShoppingResources/img/13/Frutos-de-Ora-Pro-Nobis-10-Frutos-Frete-Gratis-2.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 13, 'http://localhost/PROJETOS/ShoppingResources/img/13/Frutos-de-Ora-Pro-Nobis-10-Frutos-Frete-Gratis-3.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 13, 'http://localhost/PROJETOS/ShoppingResources/img/13/Frutos-de-Ora-Pro-Nobis-10-Frutos-Frete-Gratis-4.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 14, 'http://localhost/PROJETOS/ShoppingResources/img/14/Mudas-Fruta-do-Milagre-Variedade-Gigante-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 14, 'http://localhost/PROJETOS/ShoppingResources/thumb/Mudas-Fruta-do-Milagre-Variedade-Gigante-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 14, 'http://localhost/PROJETOS/ShoppingResources/img/14/Mudas-Fruta-do-Milagre-Variedade-Gigante-2.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 14, 'http://localhost/PROJETOS/ShoppingResources/img/14/Mudas-Fruta-do-Milagre-Variedade-Gigante-3.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 14, 'http://localhost/PROJETOS/ShoppingResources/img/14/Mudas-Fruta-do-Milagre-Variedade-Gigante-4.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 14, 'http://localhost/PROJETOS/ShoppingResources/img/14/Mudas-Fruta-do-Milagre-Variedade-Gigante-5.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 15, 'http://localhost/PROJETOS/ShoppingResources/img/15/Goji-Berry-1KG-Fruto-Desidratado-Pronta-Entrega-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 15, 'http://localhost/PROJETOS/ShoppingResources/thumb/Goji-Berry-1KG-Fruto-Desidratado-Pronta-Entrega-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 15, 'http://localhost/PROJETOS/ShoppingResources/img/15/Goji-Berry-1KG-Fruto-Desidratado-Pronta-Entrega-2.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 15, 'http://localhost/PROJETOS/ShoppingResources/img/15/Goji-Berry-1KG-Fruto-Desidratado-Pronta-Entrega-3.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 15, 'http://localhost/PROJETOS/ShoppingResources/img/15/Goji-Berry-1KG-Fruto-Desidratado-Pronta-Entrega-4.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 16, 'http://localhost/PROJETOS/ShoppingResources/img/16/Hibisco-Desidratado-Cha-500G-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 16, 'http://localhost/PROJETOS/ShoppingResources/thumb/Hibisco-Desidratado-Cha-500G-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 16, 'http://localhost/PROJETOS/ShoppingResources/img/16/Hibisco-Desidratado-Cha-500G-2.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 16, 'http://localhost/PROJETOS/ShoppingResources/img/16/Hibisco-Desidratado-Cha-500G-3.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 17, 'http://localhost/PROJETOS/ShoppingResources/img/17/Whisky-Johnnie-Walker-Double-Black-1000ML-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 17, 'http://localhost/PROJETOS/ShoppingResources/thumb/Whisky-Johnnie-Walker-Double-Black-1000ML-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 17, 'http://localhost/PROJETOS/ShoppingResources/img/17/Whisky-Johnnie-Walker-Double-Black-1000ML-2.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 18, 'http://localhost/PROJETOS/ShoppingResources/img/18/Vodka-Absolut-Unique-1L-Ed-Limitada-Raridade-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 18, 'http://localhost/PROJETOS/ShoppingResources/thumb/Vodka-Absolut-Unique-1L-Ed-Limitada-Raridade-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 18, 'http://localhost/PROJETOS/ShoppingResources/img/18/Vodka-Absolut-Unique-1L-Ed-Limitada-Raridade-2.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 18, 'http://localhost/PROJETOS/ShoppingResources/img/18/Vodka-Absolut-Unique-1L-Ed-Limitada-Raridade-3.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 19, 'http://localhost/PROJETOS/ShoppingResources/img/19/Espumante-Cava-Freixenet-Carta-Nevada-750ML-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 19, 'http://localhost/PROJETOS/ShoppingResources/thumb/Espumante-Cava-Freixenet-Carta-Nevada-750ML-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 19, 'http://localhost/PROJETOS/ShoppingResources/img/19/Espumante-Cava-Freixenet-Carta-Nevada-750ML-2.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 19, 'http://localhost/PROJETOS/ShoppingResources/img/19/Espumante-Cava-Freixenet-Carta-Nevada-750ML-3.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 19, 'http://localhost/PROJETOS/ShoppingResources/img/19/Espumante-Cava-Freixenet-Carta-Nevada-750ML-4.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 19, 'http://localhost/PROJETOS/ShoppingResources/img/19/Espumante-Cava-Freixenet-Carta-Nevada-750ML-5.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 20, 'http://localhost/PROJETOS/ShoppingResources/img/20/Coca-Cola-Vanilla-Sabores-Baunilha-Caixa-12-Latas-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 20, 'http://localhost/PROJETOS/ShoppingResources/thumb/Coca-Cola-Vanilla-Sabores-Baunilha-Caixa-12-Latas-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 20, 'http://localhost/PROJETOS/ShoppingResources/img/20/Coca-Cola-Vanilla-Sabores-Baunilha-Caixa-12-Latas-2.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 21, 'http://localhost/PROJETOS/ShoppingResources/img/21/Refrigerante-Crush-Orange-Importado-12-Latas-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 21, 'http://localhost/PROJETOS/ShoppingResources/thumb/Refrigerante-Crush-Orange-Importado-12-Latas-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 21, 'http://localhost/PROJETOS/ShoppingResources/img/21/Refrigerante-Crush-Orange-Importado-12-Latas-2.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 21, 'http://localhost/PROJETOS/ShoppingResources/img/21/Refrigerante-Crush-Orange-Importado-12-Latas-3.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 22, 'http://localhost/PROJETOS/ShoppingResources/img/22/Refrigerante-Canada-Dry-Ginger-Ale-Caixa-12-Latas-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 22, 'http://localhost/PROJETOS/ShoppingResources/img/22/Refrigerante-Canada-Dry-Ginger-Ale-Caixa-12-Latas-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 22, 'http://localhost/PROJETOS/ShoppingResources/img/22/Refrigerante-Canada-Dry-Ginger-Ale-Caixa-12-Latas-2.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 22, 'http://localhost/PROJETOS/ShoppingResources/img/22/Refrigerante-Canada-Dry-Ginger-Ale-Caixa-12-Latas-3.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 23, 'http://localhost/PROJETOS/ShoppingResources/img/23/Ferro-de-Passar-Roupa-a-Vapor-com-Caldeira-Delonghi-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 23, 'http://localhost/PROJETOS/ShoppingResources/thumb/Ferro-de-Passar-Roupa-a-Vapor-com-Caldeira-Delonghi-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 23, 'http://localhost/PROJETOS/ShoppingResources/img/23/Ferro-de-Passar-Roupa-a-Vapor-com-Caldeira-Delonghi-2.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 23, 'http://localhost/PROJETOS/ShoppingResources/img/23/Ferro-de-Passar-Roupa-a-Vapor-com-Caldeira-Delonghi-3.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 23, 'http://localhost/PROJETOS/ShoppingResources/img/23/Ferro-de-Passar-Roupa-a-Vapor-com-Caldeira-Delonghi-4.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 23, 'http://localhost/PROJETOS/ShoppingResources/img/23/Ferro-de-Passar-Roupa-a-Vapor-com-Caldeira-Delonghi-5.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 23, 'http://localhost/PROJETOS/ShoppingResources/img/23/Ferro-de-Passar-Roupa-a-Vapor-com-Caldeira-Delonghi-6.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 24, 'http://localhost/PROJETOS/ShoppingResources/img/24/Lencol-Elastico-2-Fronhas-Quenn-Malha-Penteada-100-Algodao-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 24, 'http://localhost/PROJETOS/ShoppingResources/thumb/Lencol-Elastico-2-Fronhas-Quenn-Malha-Penteada-100-Algodao-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 24, 'http://localhost/PROJETOS/ShoppingResources/img/24/Lencol-Elastico-2-Fronhas-Quenn-Malha-Penteada-100-Algodao-2.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 25, 'http://localhost/PROJETOS/ShoppingResources/img/25/Manta-de-Sofa-Gigante-Tipo-Capa-de-Sofa-Algodao-240X180M-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 25, 'http://localhost/PROJETOS/ShoppingResources/thumb/Manta-de-Sofa-Gigante-Tipo-Capa-de-Sofa-Algodao-240X180M-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 25, 'http://localhost/PROJETOS/ShoppingResources/img/25/Manta-de-Sofa-Gigante-Tipo-Capa-de-Sofa-Algodao-240X180M-2.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 25, 'http://localhost/PROJETOS/ShoppingResources/img/25/Manta-de-Sofa-Gigante-Tipo-Capa-de-Sofa-Algodao-240X180M-3.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 25, 'http://localhost/PROJETOS/ShoppingResources/img/25/Manta-de-Sofa-Gigante-Tipo-Capa-de-Sofa-Algodao-240X180M-4.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 26, 'http://localhost/PROJETOS/ShoppingResources/img/26/Divergente-Insurgente-Convergente-Quatro-04-Livros-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 26, 'http://localhost/PROJETOS/ShoppingResources/thumb/Divergente-Insurgente-Convergente-Quatro-04-Livros-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 26, 'http://localhost/PROJETOS/ShoppingResources/img/26/Divergente-Insurgente-Convergente-Quatro-04-Livros-2.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 26, 'http://localhost/PROJETOS/ShoppingResources/img/26/Divergente-Insurgente-Convergente-Quatro-04-Livros-3.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 26, 'http://localhost/PROJETOS/ShoppingResources/img/26/Divergente-Insurgente-Convergente-Quatro-04-Livros-4.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 26, 'http://localhost/PROJETOS/ShoppingResources/img/26/Divergente-Insurgente-Convergente-Quatro-04-Livros-5.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 27, 'http://localhost/PROJETOS/ShoppingResources/img/27/Box-Supernatural-Kit-com-05-Livros.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 27, 'http://localhost/PROJETOS/ShoppingResources/thumb/Box-Supernatural-Kit-com-05-Livros.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 28, 'http://localhost/PROJETOS/ShoppingResources/img/28/Colecao-8-Livros-Fabulas-a-Cigarra-e-a-Formiga-Lebre-Raposa-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 28, 'http://localhost/PROJETOS/ShoppingResources/thumb/Colecao-8-Livros-Fabulas-a-Cigarra-e-a-Formiga-Lebre-Raposa-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 28, 'http://localhost/PROJETOS/ShoppingResources/img/28/Colecao-8-Livros-Fabulas-a-Cigarra-e-a-Formiga-Lebre-Raposa-2.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 28, 'http://localhost/PROJETOS/ShoppingResources/img/28/Colecao-8-Livros-Fabulas-a-Cigarra-e-a-Formiga-Lebre-Raposa-3.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 28, 'http://localhost/PROJETOS/ShoppingResources/img/28/Colecao-8-Livros-Fabulas-a-Cigarra-e-a-Formiga-Lebre-Raposa-4.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 28, 'http://localhost/PROJETOS/ShoppingResources/img/28/Colecao-8-Livros-Fabulas-a-Cigarra-e-a-Formiga-Lebre-Raposa-5.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 29, 'http://localhost/PROJETOS/ShoppingResources/img/29/Tablet-Positivo-Duo-ZX3020-Prata-e-Preto-2-em-1-Quad-Core-16GB-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 29, 'http://localhost/PROJETOS/ShoppingResources/thumb/Tablet-Positivo-Duo-ZX3020-Prata-e-Preto-2-em-1-Quad-Core-16GB-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 29, 'http://localhost/PROJETOS/ShoppingResources/img/29/Tablet-Positivo-Duo-ZX3020-Prata-e-Preto-2-em-1-Quad-Core-16GB-2.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 29, 'http://localhost/PROJETOS/ShoppingResources/img/29/Tablet-Positivo-Duo-ZX3020-Prata-e-Preto-2-em-1-Quad-Core-16GB-3.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 29, 'http://localhost/PROJETOS/ShoppingResources/img/29/Tablet-Positivo-Duo-ZX3020-Prata-e-Preto-2-em-1-Quad-Core-16GB-4.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 30, 'http://localhost/PROJETOS/ShoppingResources/img/30/Pen-Drive-Titan-8GB-Preto-Multilaser-PD601-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 30, 'http://localhost/PROJETOS/ShoppingResources/thumb/Pen-Drive-Titan-8GB-Preto-Multilaser-PD601-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 30, 'http://localhost/PROJETOS/ShoppingResources/img/30/Pen-Drive-Titan-8GB-Preto-Multilaser-PD601-2.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 31, 'http://localhost/PROJETOS/ShoppingResources/img/31/HD-Externo-Portatil-Samsung-M3-1TB-USB-3-0-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 31, 'http://localhost/PROJETOS/ShoppingResources/thumb/HD-Externo-Portatil-Samsung-M3-1TB-USB-3-0-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 31, 'http://localhost/PROJETOS/ShoppingResources/img/31/HD-Externo-Portatil-Samsung-M3-1TB-USB-3-0-2.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 31, 'http://localhost/PROJETOS/ShoppingResources/img/31/HD-Externo-Portatil-Samsung-M3-1TB-USB-3-0-3.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 32, 'http://localhost/PROJETOS/ShoppingResources/img/32/Tablet-Semp-Toshiba-TA0703G-16GB-7-WI-FI-3G-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 32, 'http://localhost/PROJETOS/ShoppingResources/thumb/Tablet-Semp-Toshiba-TA0703G-16GB-7-WI-FI-3G-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 32, 'http://localhost/PROJETOS/ShoppingResources/img/32/Tablet-Semp-Toshiba-TA0703G-16GB-7-WI-FI-3G-2.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 32, 'http://localhost/PROJETOS/ShoppingResources/img/32/Tablet-Semp-Toshiba-TA0703G-16GB-7-WI-FI-3G-3.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 32, 'http://localhost/PROJETOS/ShoppingResources/img/32/Tablet-Semp-Toshiba-TA0703G-16GB-7-WI-FI-3G-4.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 33, 'http://localhost/PROJETOS/ShoppingResources/img/33/Multifuncional-Colorida-Wireless-2546-HP-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 33, 'http://localhost/PROJETOS/ShoppingResources/thumb/Multifuncional-Colorida-Wireless-2546-HP-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 33, 'http://localhost/PROJETOS/ShoppingResources/img/33/Multifuncional-Colorida-Wireless-2546-HP-2.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 33, 'http://localhost/PROJETOS/ShoppingResources/img/33/Multifuncional-Colorida-Wireless-2546-HP-3.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 33, 'http://localhost/PROJETOS/ShoppingResources/img/33/Multifuncional-Colorida-Wireless-2546-HP-4.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 34, 'http://localhost/PROJETOS/ShoppingResources/img/34/Fax-Panasonic-KX-FT932BR-com-Bina-Novo-Garantia-1-Ano-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 34, 'http://localhost/PROJETOS/ShoppingResources/thumb/Fax-Panasonic-KX-FT932BR-com-Bina-Novo-Garantia-1-Ano-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 34, 'http://localhost/PROJETOS/ShoppingResources/img/34/Fax-Panasonic-KX-FT932BR-com-Bina-Novo-Garantia-1-Ano-2.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 34, 'http://localhost/PROJETOS/ShoppingResources/img/34/Fax-Panasonic-KX-FT932BR-com-Bina-Novo-Garantia-1-Ano-3.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 35, 'http://localhost/PROJETOS/ShoppingResources/img/35/Telefone-Sem-Fio-Philips-D1201BBR-Dect-60-Bina-Preto-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 35, 'http://localhost/PROJETOS/ShoppingResources/thumb/Telefone-Sem-Fio-Philips-D1201BBR-Dect-60-Bina-Preto-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 35, 'http://localhost/PROJETOS/ShoppingResources/img/35/Telefone-Sem-Fio-Philips-D1201BBR-Dect-60-Bina-Preto-2.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 35, 'http://localhost/PROJETOS/ShoppingResources/img/35/Telefone-Sem-Fio-Philips-D1201BBR-Dect-60-Bina-Preto-3.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 36, 'http://localhost/PROJETOS/ShoppingResources/img/36/Bateria-Musical-Infantil-Transformers-100-Original-Kids-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 36, 'http://localhost/PROJETOS/ShoppingResources/thumb/Bateria-Musical-Infantil-Transformers-100-Original-Kids-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 36, 'http://localhost/PROJETOS/ShoppingResources/img/36/Bateria-Musical-Infantil-Transformers-100-Original-Kids-2.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 36, 'http://localhost/PROJETOS/ShoppingResources/img/36/Bateria-Musical-Infantil-Transformers-100-Original-Kids-3.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 36, 'http://localhost/PROJETOS/ShoppingResources/img/36/Bateria-Musical-Infantil-Transformers-100-Original-Kids-4.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 37, 'http://localhost/PROJETOS/ShoppingResources/img/37/Mini-Helicoptero-V911-4-Canais-com-Gyro-e-Controle-24GHZ-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 37, 'http://localhost/PROJETOS/ShoppingResources/thumb/Mini-Helicoptero-V911-4-Canais-com-Gyro-e-Controle-24GHZ-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 37, 'http://localhost/PROJETOS/ShoppingResources/img/37/Mini-Helicoptero-V911-4-Canais-com-Gyro-e-Controle-24GHZ-2.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 37, 'http://localhost/PROJETOS/ShoppingResources/img/37/Mini-Helicoptero-V911-4-Canais-com-Gyro-e-Controle-24GHZ-3.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 37, 'http://localhost/PROJETOS/ShoppingResources/img/37/Mini-Helicoptero-V911-4-Canais-com-Gyro-e-Controle-24GHZ-4.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 38, 'http://localhost/PROJETOS/ShoppingResources/img/38/Tapete-Infantil-EVA-Alfabeto-Numeros-Alfanumerico-Bebe-40PCS-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 38, 'http://localhost/PROJETOS/ShoppingResources/thumb/Tapete-Infantil-EVA-Alfabeto-Numeros-Alfanumerico-Bebe-40PCS-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 38, 'http://localhost/PROJETOS/ShoppingResources/img/38/Tapete-Infantil-EVA-Alfabeto-Numeros-Alfanumerico-Bebe-40PCS-2.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 39, 'http://localhost/PROJETOS/ShoppingResources/img/39/Piano-Teclado-Musical-Infantil-Sons-Eletrnico-Frete-Gratis-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 39, 'http://localhost/PROJETOS/ShoppingResources/thumb/Piano-Teclado-Musical-Infantil-Sons-Eletrnico-Frete-Gratis-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 39, 'http://localhost/PROJETOS/ShoppingResources/img/39/Piano-Teclado-Musical-Infantil-Sons-Eletrnico-Frete-Gratis-2.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 40, 'http://localhost/PROJETOS/ShoppingResources/img/40/DVD-Player-H-Buster-HBD-6680-Tela-27-Toca-CD-USB-MP3-Radio-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 40, 'http://localhost/PROJETOS/ShoppingResources/thumb/DVD-Player-H-Buster-HBD-6680-Tela-27-Toca-CD-USB-MP3-Radio-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 40, 'http://localhost/PROJETOS/ShoppingResources/img/40/DVD-Player-H-Buster-HBD-6680-Tela-27-Toca-CD-USB-MP3-Radio-2.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 40, 'http://localhost/PROJETOS/ShoppingResources/img/40/DVD-Player-H-Buster-HBD-6680-Tela-27-Toca-CD-USB-MP3-Radio-3.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 40, 'http://localhost/PROJETOS/ShoppingResources/img/40/DVD-Player-H-Buster-HBD-6680-Tela-27-Toca-CD-USB-MP3-Radio-4.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 41, 'http://localhost/PROJETOS/ShoppingResources/img/41/Caixa-Trio-100-Selenium-2-Modulos-Taramps-Frete-Gratis-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 41, 'http://localhost/PROJETOS/ShoppingResources/thumb/Caixa-Trio-100-Selenium-2-Modulos-Taramps-Frete-Gratis-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 41, 'http://localhost/PROJETOS/ShoppingResources/img/41/Caixa-Trio-100-Selenium-2-Modulos-Taramps-Frete-Gratis-2.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 41, 'http://localhost/PROJETOS/ShoppingResources/img/41/Caixa-Trio-100-Selenium-2-Modulos-Taramps-Frete-Gratis-3.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 41, 'http://localhost/PROJETOS/ShoppingResources/img/41/Caixa-Trio-100-Selenium-2-Modulos-Taramps-Frete-Gratis-4.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 42, 'http://localhost/PROJETOS/ShoppingResources/img/42/Capas-de-Courvin-para-Bancos-Automotivos-Frete-Gratis-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 42, 'http://localhost/PROJETOS/ShoppingResources/thumb/Capas-de-Courvin-para-Bancos-Automotivos-Frete-Gratis-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 42, 'http://localhost/PROJETOS/ShoppingResources/img/42/Capas-de-Courvin-para-Bancos-Automotivos-Frete-Gratis-2.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 42, 'http://localhost/PROJETOS/ShoppingResources/img/42/Capas-de-Courvin-para-Bancos-Automotivos-Frete-Gratis-3.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 43, 'http://localhost/PROJETOS/ShoppingResources/img/43/Kit-Caixa-Trio-Completa-7000W-2-12-4D-2T-Modulo-4000W-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 43, 'http://localhost/PROJETOS/ShoppingResources/thumb/Kit-Caixa-Trio-Completa-7000W-2-12-4D-2T-Modulo-4000W-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 43, 'http://localhost/PROJETOS/ShoppingResources/img/43/Kit-Caixa-Trio-Completa-7000W-2-12-4D-2T-Modulo-4000W-2.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 43, 'http://localhost/PROJETOS/ShoppingResources/img/43/Kit-Caixa-Trio-Completa-7000W-2-12-4D-2T-Modulo-4000W-3.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 44, 'http://localhost/PROJETOS/ShoppingResources/img/44/Modulo-Amplificador-Taramps-TS-800-X4-800W-RMS-RCA-Sedex-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 44, 'http://localhost/PROJETOS/ShoppingResources/thumb/Modulo-Amplificador-Taramps-TS-800-X4-800W-RMS-RCA-Sedex-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 44, 'http://localhost/PROJETOS/ShoppingResources/img/44/Modulo-Amplificador-Taramps-TS-800-X4-800W-RMS-RCA-Sedex-2.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 44, 'http://localhost/PROJETOS/ShoppingResources/img/44/Modulo-Amplificador-Taramps-TS-800-X4-800W-RMS-RCA-Sedex-3.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 44, 'http://localhost/PROJETOS/ShoppingResources/img/44/Modulo-Amplificador-Taramps-TS-800-X4-800W-RMS-RCA-Sedex-4.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 45, 'http://localhost/PROJETOS/ShoppingResources/img/45/Maleta-de-Ferramentas-com-142-Pecas-BR-Tools.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 45, 'http://localhost/PROJETOS/ShoppingResources/thumb/Maleta-de-Ferramentas-com-142-Pecas-BR-Tools.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 46, 'http://localhost/PROJETOS/ShoppingResources/img/46/Jogo-de-Ferramentas-110-Pecas-Mayle.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 46, 'http://localhost/PROJETOS/ShoppingResources/thumb/Jogo-de-Ferramentas-110-Pecas-Mayle.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 47, 'http://localhost/PROJETOS/ShoppingResources/img/47/Kit-Jogo-Ferramentas-e-Furadeira-Maleta-110PCS-Frete-Gratis-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 47, 'http://localhost/PROJETOS/ShoppingResources/thumb/Kit-Jogo-Ferramentas-e-Furadeira-Maleta-110PCS-Frete-Gratis-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 47, 'http://localhost/PROJETOS/ShoppingResources/img/47/Kit-Jogo-Ferramentas-e-Furadeira-Maleta-110PCS-Frete-Gratis-2.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 47, 'http://localhost/PROJETOS/ShoppingResources/img/47/Kit-Jogo-Ferramentas-e-Furadeira-Maleta-110PCS-Frete-Gratis-3.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 47, 'http://localhost/PROJETOS/ShoppingResources/img/47/Kit-Jogo-Ferramentas-e-Furadeira-Maleta-110PCS-Frete-Gratis-4.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 48, 'http://localhost/PROJETOS/ShoppingResources/img/48/Camisa-3D-Caveira-Breakthough-The-Mountain-no-Brasil-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 48, 'http://localhost/PROJETOS/ShoppingResources/thumb/Camisa-3D-Caveira-Breakthough-The-Mountain-no-Brasil-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 48, 'http://localhost/PROJETOS/ShoppingResources/img/48/Camisa-3D-Caveira-Breakthough-The-Mountain-no-Brasil-2.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 49, 'http://localhost/PROJETOS/ShoppingResources/img/49/Camisetas-Engracadas-Dandas-Filmes-Serie-Games-Super-Herois-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 49, 'http://localhost/PROJETOS/ShoppingResources/thumb/Camisetas-Engracadas-Dandas-Filmes-Serie-Games-Super-Herois-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 49, 'http://localhost/PROJETOS/ShoppingResources/img/49/Camisetas-Engracadas-Dandas-Filmes-Serie-Games-Super-Herois-2.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 49, 'http://localhost/PROJETOS/ShoppingResources/img/49/Camisetas-Engracadas-Dandas-Filmes-Serie-Games-Super-Herois-3.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 50, 'http://localhost/PROJETOS/ShoppingResources/img/50/Camisa-Social-Slim-Fit-Importada-200-Novos-Modelos-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 50, 'http://localhost/PROJETOS/ShoppingResources/thumb/Camisa-Social-Slim-Fit-Importada-200-Novos-Modelos-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 50, 'http://localhost/PROJETOS/ShoppingResources/img/50/Camisa-Social-Slim-Fit-Importada-200-Novos-Modelos-2.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 50, 'http://localhost/PROJETOS/ShoppingResources/img/50/Camisa-Social-Slim-Fit-Importada-200-Novos-Modelos-3.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 51, 'http://localhost/PROJETOS/ShoppingResources/img/51/Calca-Jeans-Preta-Skinny-Sarja-Jeans-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 51, 'http://localhost/PROJETOS/ShoppingResources/thumb/Calca-Jeans-Preta-Skinny-Sarja-Jeans-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 51, 'http://localhost/PROJETOS/ShoppingResources/img/51/Calca-Jeans-Preta-Skinny-Sarja-Jeans-2.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 51, 'http://localhost/PROJETOS/ShoppingResources/img/51/Calca-Jeans-Preta-Skinny-Sarja-Jeans-3.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 52, 'http://localhost/PROJETOS/ShoppingResources/img/52/Calca-Combat-Forhonor-Top-de-Linha-Ripstop-Design-Marines-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 52, 'http://localhost/PROJETOS/ShoppingResources/thumb/Calca-Combat-Forhonor-Top-de-Linha-Ripstop-Design-Marines-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 52, 'http://localhost/PROJETOS/ShoppingResources/img/52/Calca-Combat-Forhonor-Top-de-Linha-Ripstop-Design-Marines-2.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 52, 'http://localhost/PROJETOS/ShoppingResources/img/52/Calca-Combat-Forhonor-Top-de-Linha-Ripstop-Design-Marines-3.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 52, 'http://localhost/PROJETOS/ShoppingResources/img/52/Calca-Combat-Forhonor-Top-de-Linha-Ripstop-Design-Marines-4.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 53, 'http://localhost/PROJETOS/ShoppingResources/img/53/Kit-com-3-Cinto-em-Gorgoro-Cafetroy-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 53, 'http://localhost/PROJETOS/ShoppingResources/thumb/Kit-com-3-Cinto-em-Gorgoro-Cafetroy-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 53, 'http://localhost/PROJETOS/ShoppingResources/img/53/Kit-com-3-Cinto-em-Gorgoro-Cafetroy-2.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 53, 'http://localhost/PROJETOS/ShoppingResources/img/53/Kit-com-3-Cinto-em-Gorgoro-Cafetroy-3.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 54, 'http://localhost/PROJETOS/ShoppingResources/img/54/Adidas-Springblade-Drive-4-Original-20-Pronta-Entrega.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 54, 'http://localhost/PROJETOS/ShoppingResources/thumb/Adidas-Springblade-Drive-4-Original-20-Pronta-Entrega.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 55, 'http://localhost/PROJETOS/ShoppingResources/img/55/Tenis-Mizuno-Prophecy-2-Original-Frete-Gratis-Pronta-Entrega-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 55, 'http://localhost/PROJETOS/ShoppingResources/thumb/Tenis-Mizuno-Prophecy-2-Original-Frete-Gratis-Pronta-Entrega-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 55, 'http://localhost/PROJETOS/ShoppingResources/img/55/Tenis-Mizuno-Prophecy-2-Original-Frete-Gratis-Pronta-Entrega-2.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 55, 'http://localhost/PROJETOS/ShoppingResources/img/55/Tenis-Mizuno-Prophecy-2-Original-Frete-Gratis-Pronta-Entrega-3.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 56, 'http://localhost/PROJETOS/ShoppingResources/img/56/Bota-Masculina-Sandro-Moscoloni-em-Couro-Worker-Amarelo-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 56, 'http://localhost/PROJETOS/ShoppingResources/thumb/Bota-Masculina-Sandro-Moscoloni-em-Couro-Worker-Amarelo-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 56, 'http://localhost/PROJETOS/ShoppingResources/img/56/Bota-Masculina-Sandro-Moscoloni-em-Couro-Worker-Amarelo-2.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 56, 'http://localhost/PROJETOS/ShoppingResources/img/56/Bota-Masculina-Sandro-Moscoloni-em-Couro-Worker-Amarelo-3.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 57, 'http://localhost/PROJETOS/ShoppingResources/img/57/Sapato-Social-em-Couro-Verniz-100-Legitimo-Frete-Gratis-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 57, 'http://localhost/PROJETOS/ShoppingResources/thumb/Sapato-Social-em-Couro-Verniz-100-Legitimo-Frete-Gratis-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 57, 'http://localhost/PROJETOS/ShoppingResources/img/57/Sapato-Social-em-Couro-Verniz-100-Legitimo-Frete-Gratis-2.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 57, 'http://localhost/PROJETOS/ShoppingResources/img/57/Sapato-Social-em-Couro-Verniz-100-Legitimo-Frete-Gratis-3.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 58, 'http://localhost/PROJETOS/ShoppingResources/img/58/Sapato-Importado-Feminino-Glitter-Pronta-Entrega-no-Brasil-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 58, 'http://localhost/PROJETOS/ShoppingResources/thumb/Sapato-Importado-Feminino-Glitter-Pronta-Entrega-no-Brasil-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 58, 'http://localhost/PROJETOS/ShoppingResources/img/58/Sapato-Importado-Feminino-Glitter-Pronta-Entrega-no-Brasil-2.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 58, 'http://localhost/PROJETOS/ShoppingResources/img/58/Sapato-Importado-Feminino-Glitter-Pronta-Entrega-no-Brasil-3.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 59, 'http://localhost/PROJETOS/ShoppingResources/img/59/Sapatenis-em-Couro-Legitimo-Sandro-Moscoloni-Street-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 59, 'http://localhost/PROJETOS/ShoppingResources/thumb/Sapatenis-em-Couro-Legitimo-Sandro-Moscoloni-Street-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 59, 'http://localhost/PROJETOS/ShoppingResources/img/59/Sapatenis-em-Couro-Legitimo-Sandro-Moscoloni-Street-2.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 59, 'http://localhost/PROJETOS/ShoppingResources/img/59/Sapatenis-em-Couro-Legitimo-Sandro-Moscoloni-Street-3.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 60, 'http://localhost/PROJETOS/ShoppingResources/img/60/Relogio-Invicta-Pro-Diver-6981-Ouro-18K-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 60, 'http://localhost/PROJETOS/ShoppingResources/thumb/Relogio-Invicta-Pro-Diver-6981-Ouro-18K-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 60, 'http://localhost/PROJETOS/ShoppingResources/img/60/Relogio-Invicta-Pro-Diver-6981-Ouro-18K-2.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 60, 'http://localhost/PROJETOS/ShoppingResources/img/60/Relogio-Invicta-Pro-Diver-6981-Ouro-18K-3.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 60, 'http://localhost/PROJETOS/ShoppingResources/img/60/Relogio-Invicta-Pro-Diver-6981-Ouro-18K-4.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 61, 'http://localhost/PROJETOS/ShoppingResources/img/61/Smartwatch-U8-Relogio-Inteligente-Bluetooth-Android-Iphone-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 61, 'http://localhost/PROJETOS/ShoppingResources/thumb/Smartwatch-U8-Relogio-Inteligente-Bluetooth-Android-Iphone-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 61, 'http://localhost/PROJETOS/ShoppingResources/img/61/Smartwatch-U8-Relogio-Inteligente-Bluetooth-Android-Iphone-2.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 61, 'http://localhost/PROJETOS/ShoppingResources/img/61/Smartwatch-U8-Relogio-Inteligente-Bluetooth-Android-Iphone-3.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 61, 'http://localhost/PROJETOS/ShoppingResources/img/61/Smartwatch-U8-Relogio-Inteligente-Bluetooth-Android-Iphone-4.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 62, 'http://localhost/PROJETOS/ShoppingResources/img/62/Relogio-Feminino-com-Estojo-26-Pulseiras-26-Aros-Relogios-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 62, 'http://localhost/PROJETOS/ShoppingResources/thumb/Relogio-Feminino-com-Estojo-26-Pulseiras-26-Aros-Relogios-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 62, 'http://localhost/PROJETOS/ShoppingResources/img/62/Relogio-Feminino-com-Estojo-26-Pulseiras-26-Aros-Relogios-2.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 63, 'http://localhost/PROJETOS/ShoppingResources/img/63/Relogio-de-Pulso-Vintage-Feminino-em-Couro-Brinde-Exclusivo-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 63, 'http://localhost/PROJETOS/ShoppingResources/thumb/Relogio-de-Pulso-Vintage-Feminino-em-Couro-Brinde-Exclusivo-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 63, 'http://localhost/PROJETOS/ShoppingResources/img/63/Relogio-de-Pulso-Vintage-Feminino-em-Couro-Brinde-Exclusivo-2.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 63, 'http://localhost/PROJETOS/ShoppingResources/img/63/Relogio-de-Pulso-Vintage-Feminino-em-Couro-Brinde-Exclusivo-3.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 64, 'http://localhost/PROJETOS/ShoppingResources/img/64/Pulseira-Bracelete-Masculina-Tribal-Couro-2-Unidades-Frete-Gratis-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 64, 'http://localhost/PROJETOS/ShoppingResources/thumb/Pulseira-Bracelete-Masculina-Tribal-Couro-2-Unidades-Frete-Gratis-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 64, 'http://localhost/PROJETOS/ShoppingResources/img/64/Pulseira-Bracelete-Masculina-Tribal-Couro-2-Unidades-Frete-Gratis-2.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 64, 'http://localhost/PROJETOS/ShoppingResources/img/64/Pulseira-Bracelete-Masculina-Tribal-Couro-2-Unidades-Frete-Gratis-3.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 65, 'http://localhost/PROJETOS/ShoppingResources/img/65/Pulseira-Masculina-Bracelete-Couro-Legitimo-Preto-Aco-Inox-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 65, 'http://localhost/PROJETOS/ShoppingResources/thumb/Pulseira-Masculina-Bracelete-Couro-Legitimo-Preto-Aco-Inox-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 65, 'http://localhost/PROJETOS/ShoppingResources/img/65/Pulseira-Masculina-Bracelete-Couro-Legitimo-Preto-Aco-Inox-2.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 65, 'http://localhost/PROJETOS/ShoppingResources/img/65/Pulseira-Masculina-Bracelete-Couro-Legitimo-Preto-Aco-Inox-3.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 66, 'http://localhost/PROJETOS/ShoppingResources/img/66/Pulseira-Feminina-Victoria-Secrets-Cristal-Banhado-Ouro-18K-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 66, 'http://localhost/PROJETOS/ShoppingResources/thumb/Pulseira-Feminina-Victoria-Secrets-Cristal-Banhado-Ouro-18K-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 66, 'http://localhost/PROJETOS/ShoppingResources/img/66/Pulseira-Feminina-Victoria-Secrets-Cristal-Banhado-Ouro-18K-2.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 66, 'http://localhost/PROJETOS/ShoppingResources/img/66/Pulseira-Feminina-Victoria-Secrets-Cristal-Banhado-Ouro-18K-3.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 67, 'http://localhost/PROJETOS/ShoppingResources/img/67/Caixa-com-10-Resmas-Papel-Folha-A4-75G-Reciclado-Chamex-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 67, 'http://localhost/PROJETOS/ShoppingResources/thumb/Caixa-com-10-Resmas-Papel-Folha-A4-75G-Reciclado-Chamex-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 67, 'http://localhost/PROJETOS/ShoppingResources/img/67/Caixa-com-10-Resmas-Papel-Folha-A4-75G-Reciclado-Chamex-2.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 67, 'http://localhost/PROJETOS/ShoppingResources/img/67/Caixa-com-10-Resmas-Papel-Folha-A4-75G-Reciclado-Chamex-3.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 68, 'http://localhost/PROJETOS/ShoppingResources/img/68/Carimbos-para-Professoras-Premium-20-Original-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 68, 'http://localhost/PROJETOS/ShoppingResources/thumb/Carimbos-para-Professoras-Premium-20-Original-1.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 68, 'http://localhost/PROJETOS/ShoppingResources/img/68/Carimbos-para-Professoras-Premium-20-Original-2.jpg', NOW(), NOW());

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 68, 'http://localhost/PROJETOS/ShoppingResources/img/68/Carimbos-para-Professoras-Premium-20-Original-3.jpg', NOW(), NOW());

## 5 registros na tabela "promotions" -------------------------------------------------

INSERT INTO promotions (promotion_name, duration, user_id, date_start, date_end, created, modified)
VALUES ('Promoção de férias', 5, 25, '2010-10-28 09:39:49', '2011-10-28 09:39:49', NOW(), NOW());

INSERT INTO promotions (promotion_name, duration, user_id, date_start, date_end, created, modified)
VALUES ('Promoção de primavera', 7, 26, '2011-10-28 09:39:49', '2012-10-28 09:39:49', NOW(), NOW());

INSERT INTO promotions (promotion_name, duration, user_id, date_start, date_end, created, modified)
VALUES ('Promoção de outono', 9, 27, '2012-10-28 09:39:49', '2013-10-28 09:39:49', NOW(), NOW());

INSERT INTO promotions (promotion_name, duration, user_id, date_start, date_end, created, modified)
VALUES ('Promoção de verão', 2, 28, '2013-10-28 09:39:49', '2014-10-28 09:39:49', NOW(), NOW());

INSERT INTO promotions (promotion_name, duration, user_id, date_start, date_end, created, modified)
VALUES ('Promoção de inverno', 14, 29, '2014-10-28 09:39:49', '2017-10-28 09:39:49', NOW(), NOW());

#@ 8 registros na tabela "product_promotions" -----------------------------------------

INSERT INTO promotion_products (product_id, promotion_id, promotion_price, promotion_quantity, created, modified)
VALUES (1, 1, 10.50, 30, NOW(), NOW());

INSERT INTO promotion_products (product_id, promotion_id, promotion_price, promotion_quantity, created, modified)
VALUES (2, 2, 20.50, 30, NOW(), NOW());

INSERT INTO promotion_products (product_id, promotion_id, promotion_price, promotion_quantity, created, modified)
VALUES (3, 3, 20.50, 30, NOW(), NOW());

INSERT INTO promotion_products (product_id, promotion_id, promotion_price, promotion_quantity, created, modified)
VALUES (4, 4, 10.50, 30, NOW(), NOW());

INSERT INTO promotion_products (product_id, promotion_id, promotion_price, promotion_quantity, created, modified)
VALUES (5, 5, 20.50, 30, NOW(), NOW());

INSERT INTO promotion_products (product_id, promotion_id, promotion_price, promotion_quantity, created, modified)
VALUES (6, 1, 20.50, 30, NOW(), NOW());

INSERT INTO promotion_products (product_id, promotion_id, promotion_price, promotion_quantity, created, modified)
VALUES (7, 2, 10.50, 30, NOW(), NOW());

INSERT INTO promotion_products (product_id, promotion_id, promotion_price, promotion_quantity, created, modified)
VALUES (1, 3, 10.50, 30, NOW(), NOW());

## 2 registros na tabela "subscribers" -------------------------------------------------

INSERT INTO subscribers (email, created, modified)
VALUES ('ricardohenrique996@gmail.com', '2010-10-28 22:39:19', '2011-10-28 22:39:19');

INSERT INTO subscribers (email, created, modified)
VALUES ('ricardohenrique1@outlook.com', NOW(), NOW());

## 2 registros na tabela "banner_types" -------------------------------------------------

INSERT INTO banner_types (type_name, created, modified)
VALUES ('Banner Pequeno', NOW(), NOW());

INSERT INTO banner_types (type_name, created, modified)
VALUES ('Banner Completo', NOW(), NOW());

## 18 registros na tabela "banners" ------------------------------------------------------

INSERT INTO banners (banner_type_id, user_id, banner_description, path_banner, url_redirect, created, modified)
VALUES (1, 25, 'Kit dia dos Pais', 'http://localhost/PROJETOS/ShoppingResources/mini-banners/mini-banner1.png', 'https://pt.wikipedia.org/wiki/Acre', '2010-10-28 22:39:19', '2011-10-28 22:39:19');

INSERT INTO banners (banner_type_id, user_id, banner_description, path_banner, url_redirect, created, modified)
VALUES (1, 25, 'Kit dia das Mães', 'http://localhost/PROJETOS/ShoppingResources/mini-banners/mini-banner2.png', 'https://pt.wikipedia.org/wiki/Alagoas', '2010-10-28 22:39:19', '2011-10-28 22:39:19');

INSERT INTO banners (banner_type_id, user_id, banner_description, path_banner, url_redirect, created, modified)
VALUES (1, 25, 'Kit dia das Crianças', 'http://localhost/PROJETOS/ShoppingResources/mini-banners/mini-banner3.png', 'https://pt.wikipedia.org/wiki/Amap%C3%A1', '2011-10-28 22:39:19', '2012-10-28 22:39:19');

INSERT INTO banners (banner_type_id, user_id, banner_description, path_banner, url_redirect, created, modified)
VALUES (1, 26, 'Cesta de Natal', 'http://localhost/PROJETOS/ShoppingResources/mini-banners/mini-banner4.png', 'https://pt.wikipedia.org/wiki/Amazonas', '2011-10-28 22:39:19', '2012-10-28 22:39:19');

INSERT INTO banners (banner_type_id, user_id, banner_description, path_banner, url_redirect, created, modified)
VALUES (1, 26, 'Os melhores Ovos de Páscoa', 'http://localhost/PROJETOS/ShoppingResources/mini-banners/mini-banner5.png', 'https://pt.wikipedia.org/wiki/Bahia', '2012-10-28 22:39:19', '2013-10-28 22:39:19');

INSERT INTO banners (banner_type_id, user_id, banner_description, path_banner, url_redirect, created, modified)
VALUES (1, 26, 'Black Friday', 'http://localhost/PROJETOS/ShoppingResources/mini-banners/mini-banner6.png', 'https://pt.wikipedia.org/wiki/Cear%C3%A1', '2014-10-28 22:39:19', '2016-10-28 22:39:19');

INSERT INTO banners (banner_type_id, user_id, banner_description, path_banner, url_redirect, created, modified)
VALUES (1, 27, 'Saldão de Inverno', 'http://localhost/PROJETOS/ShoppingResources/mini-banners/mini-banner7.png', 'https://pt.wikipedia.org/wiki/Distrito_Federal_(Brasil)', '2014-10-28 22:39:19', '2016-10-28 22:39:19');

INSERT INTO banners (banner_type_id, user_id, banner_description, path_banner, url_redirect, created, modified)
VALUES (1, 27, 'Os melhores preços em informática', 'http://localhost/PROJETOS/ShoppingResources/mini-banners/mini-banner8.png', 'https://pt.wikipedia.org/wiki/Esp%C3%ADrito_Santo_(estado)', '2014-10-28 22:39:19', '2016-10-28 22:39:19');

INSERT INTO banners (banner_type_id, user_id, banner_description, path_banner, url_redirect, created, modified)
VALUES (1, 27, 'Prove comidas típicas', 'http://localhost/PROJETOS/ShoppingResources/mini-banners/mini-banner9.png', 'https://pt.wikipedia.org/wiki/Goi%C3%A1s', NOW(), NOW());

INSERT INTO banners (banner_type_id, user_id, banner_description, path_banner, url_redirect, created, modified)
VALUES (1, 28, 'Compre em até 3X sem Juros', 'http://localhost/PROJETOS/ShoppingResources/mini-banners/mini-banner10.png', 'https://pt.wikipedia.org/wiki/Maranh%C3%A3o', NOW(), NOW());

INSERT INTO banners (banner_type_id, user_id, banner_description, path_banner, url_redirect, created, modified)
VALUES (1, 28, 'Compre com cartão de Crédito e Debito', 'http://localhost/PROJETOS/ShoppingResources/mini-banners/mini-banner11.png', 'https://pt.wikipedia.org/wiki/Mato_Grosso', NOW(), NOW());

INSERT INTO banners (banner_type_id, user_id, banner_description, path_banner, url_redirect, created, modified)
VALUES (1, 28, 'Os mais novos produtos para o seu carros, confira', 'http://localhost/PROJETOS/ShoppingResources/mini-banners/mini-banner12.png', 'https://pt.wikipedia.org/wiki/Mato_Grosso_do_Sul', NOW(), NOW());

INSERT INTO banners (banner_type_id, user_id, banner_description, path_banner, url_redirect, created, modified)
VALUES (2, 28, 'Relógios, Pulseiras e Colares', 'http://localhost/PROJETOS/ShoppingResources/full-banners/full-banner1.png', 'https://pt.wikipedia.org/wiki/Minas_Gerais', '2012-10-28 22:39:19', '2013-10-28 22:39:19');

INSERT INTO banners (banner_type_id, user_id, banner_description, path_banner, url_redirect, created, modified)
VALUES (2, 29, 'Linha completa de brinquedos para as crianças', 'http://localhost/PROJETOS/ShoppingResources/full-banners/full-banner2.png', 'https://pt.wikipedia.org/wiki/Par%C3%A1', '2013-10-28 22:39:19', '2014-10-28 22:39:19');

INSERT INTO banners (banner_type_id, user_id, banner_description, path_banner, url_redirect, created, modified)
VALUES (2, 29, 'Roupas com todas as numerações', 'http://localhost/PROJETOS/ShoppingResources/full-banners/full-banner3.png', 'https://pt.wikipedia.org/wiki/Para%C3%ADba', '2014-10-28 22:39:19', '2016-10-28 22:39:19');

INSERT INTO banners (banner_type_id, user_id, banner_description, path_banner, url_redirect, created, modified)
VALUES (2, 30, 'Tênis e Sapatos com todas as numerações', 'http://localhost/PROJETOS/ShoppingResources/full-banners/full-banner4.png', 'https://pt.wikipedia.org/wiki/Paran%C3%A1', '2014-10-28 22:39:19', '2016-10-28 22:39:19');

INSERT INTO banners (banner_type_id, user_id, banner_description, path_banner, url_redirect, created, modified)
VALUES (2, 30, 'Na compra de um Sapato ganhe um Cinto', 'http://localhost/PROJETOS/ShoppingResources/full-banners/full-banner5.png', 'https://pt.wikipedia.org/wiki/Pernambuco', NOW(), NOW());

INSERT INTO banners (banner_type_id, user_id, banner_description, path_banner, url_redirect, created, modified)
VALUES (2, 30, 'Na compra de um Notebook ganhe um HD Externo', 'http://localhost/PROJETOS/ShoppingResources/full-banners/full-banner6.png', 'https://pt.wikipedia.org/wiki/Piau%C3%AD', NOW(), NOW());

#@ 9 registros na tabela "new_banners" -------------------------------------------------

INSERT INTO new_banners (user_id, name, description, path_banner, date_start, date_end, created, modified)
VALUES (1, 'Banner 1', 'Noticia Fantastica', 'news/new1.png', NOW(), '2019-11-11', NOW(), NOW());

INSERT INTO new_banners (user_id, name, description, path_banner, date_start, date_end, created, modified)
VALUES (2, 'Banner 2', 'Noticia Boa', 'news/new2.png', NOW(), '2019-11-11', NOW(), NOW());

INSERT INTO new_banners (user_id, name, description, path_banner, date_start, date_end, created, modified)
VALUES (3, 'Banner 3', 'Noticia Muito Boa', 'news/new3.png', NOW(), '2019-11-11', NOW(), NOW());

INSERT INTO new_banners (user_id, name, description, path_banner, date_start, date_end, created, modified)
VALUES (4, 'Banner 4', 'Noticia Melhor', 'news/new4.png', NOW(), '2019-11-11', NOW(), NOW());

INSERT INTO new_banners (user_id, name, description, path_banner, date_start, date_end, created, modified)
VALUES (5, 'Banner 5', 'Noticia Top', 'news/new1.png', NOW(), '2019-11-11', NOW(), NOW());

INSERT INTO new_banners (user_id, name, description, path_banner, date_start, date_end, created, modified)
VALUES (6, 'Banner 6', 'Noticia Otima', 'news/new2.png', NOW(), '2019-11-11', NOW(), NOW());

INSERT INTO new_banners (user_id, name, description, path_banner, date_start, date_end, created, modified)
VALUES (7, 'Banner 7', 'Noticia Excelente', 'news/new3.png', NOW(), '2019-11-11', NOW(), NOW());

INSERT INTO new_banners (user_id, name, description, path_banner, date_start, date_end, created, modified)
VALUES (8, 'Banner 8', 'Noticia Perfeita', 'news/new4.png', NOW(), '2019-11-11', NOW(), NOW());

INSERT INTO new_banners (user_id, name, description, path_banner, date_start, date_end, created, modified)
VALUES (9, 'Banner 9', 'Noticia Boa Dimais da Conta', 'news/new1.png', NOW(), '2019-11-11', NOW(), NOW());

## 9 registros na tabela "offer_banners" -----------------------------------------------

INSERT INTO offer_banners (user_id, name, description, path_banner, date_start, date_end, created, modified)
VALUES (1, 'Liquidificador abaixo do preço de Fábrica',
        'Liquidificador abaixo do preço de Fábrica, oferta válida somente para a loja "A" e "C"',
        'http://localhost/PROJETOS/ShoppingResources/offers/offer1.png', NOW(), '2019-11-11 09:39:49', NOW(), NOW());

INSERT INTO offer_banners (user_id, name, description, path_banner, date_start, date_end, created, modified)
VALUES (2, 'iPod por R$ 200',
        'iPod por R$ 200, oferta válida somente para a loja "D" e "E"',
        'http://localhost/PROJETOS/ShoppingResources/offers/offer2.png', NOW(), '2019-11-11 09:39:49', NOW(), NOW());

INSERT INTO offer_banners (user_id, name, description, path_banner, date_start, date_end, created, modified)
VALUES (3, 'Ovo de Páscoa R$ 10',
        'Ovo de Páscoa R$ 10, oferta válida somente para a loja "A" e "C"',
        'http://localhost/PROJETOS/ShoppingResources/offers/offer3.png', NOW(), '2019-11-11 09:39:49', NOW(), NOW());

INSERT INTO offer_banners (user_id, name, description, path_banner, date_start, date_end, created, modified)
VALUES (4, 'Notebook com garantia extendida com desconto',
        'Notebook com garantia extendida com desconto, oferta válida somente para a loja "A" e "C"',
        'http://localhost/PROJETOS/ShoppingResources/offers/offer4.png', NOW(), '2019-11-11 09:39:49', NOW(), NOW());

INSERT INTO offer_banners (user_id, name, description, path_banner, date_start, date_end, created, modified)
VALUES (5, 'Todos os sucos a partir de R$ 2.00',
        ', oferta válida somente para a loja "A" e "C"',
        'http://localhost/PROJETOS/ShoppingResources/offers/offer5.png', NOW(), '2019-11-11 09:39:49', NOW(), NOW());

INSERT INTO offer_banners (user_id, name, description, path_banner, date_start, date_end, created, modified)
VALUES (6, 'Tênis com 50% de desconto',
        'Tênis com 50% de desconto, somente numeração 43 e 44',
        'http://localhost/PROJETOS/ShoppingResources/offers/offer6.png', NOW(), '2019-11-11 09:39:49', NOW(), NOW());

INSERT INTO offer_banners (user_id, name, description, path_banner, date_start, date_end, created, modified)
VALUES (7, '2 KG Castanha de Cajú por R$ 1.50',
        '2 KG Castanha de Cajú por R$ 1.50, oferta válida somente para a loja "B" e "C"',
        'http://localhost/PROJETOS/ShoppingResources/offers/offer1.png', NOW(), '2019-11-11 09:39:49', NOW(), NOW());

INSERT INTO offer_banners (user_id, name, description, path_banner, date_start, date_end, created, modified)
VALUES (8, '1 KG de Queijo por R$ 10',
        '1 KG de Queijo por R$ 10, oferta válida no dia 12/12/2012',
        'http://localhost/PROJETOS/ShoppingResources/offers/offer2.png', NOW(), '2019-11-11 09:39:49', NOW(), NOW());

INSERT INTO offer_banners (user_id, name, description, path_banner, date_start, date_end, created, modified)
VALUES (9, '1 KG de Picanha por R$ 10',
        '1 KG de Picanha por R$ 10, oferta válida somente para a loja "B" e "D"',
        'http://localhost/PROJETOS/ShoppingResources/offers/offer3.png', NOW(), '2019-11-11 09:39:49', NOW(), NOW());

## 2 registros na tabela "comment_types" --------------------------------------------------

INSERT INTO comment_types(id, type_name, created, modified)
VALUES (1, 'Pergunta', NOW(), NOW());

INSERT INTO comment_types(id, type_name, created, modified)
VALUES (2, 'Resposta', NOW(), NOW());

## 2 registros na tabela "comment_answered" -------------------------------------------

INSERT INTO comment_types(id, type_name, created, modified)
VALUES (1, 'Não Respondida', NOW(), NOW());

INSERT INTO comment_types(id, type_name, created, modified)
VALUES (2, 'Respondida', NOW(), NOW());

## 12 registros na tabela "comments" --------------------------------------------------

INSERT INTO comments(id, comment_text, comment_type_id, product_id, user_id, posted_to, answered, created, modified)
VALUES (1, 'Qual o frete para 45.987.330 ? Obrigado', 1, 1, 2, 0, 1, NOW(), NOW());

INSERT INTO comments(id, comment_text, comment_type_id, product_id, user_id, posted_to, answered, created, modified)
VALUES (2, 'R$ 34.00', 2, 1, 26, 1, 0, NOW(), NOW());

INSERT INTO comments(id, comment_text, comment_type_id, product_id, user_id, posted_to, answered, created, modified)
VALUES (3, 'Comprando 3 tenho desconto ?', 1, 1, 3, 0, 1, NOW(), NOW());

INSERT INTO comments(id, comment_text, comment_type_id, product_id, user_id, posted_to, answered, created, modified)
VALUES (4, 'Tem sim, já calculou o frete ?', 2, 1, 26, 3, 0, NOW(), NOW());

INSERT INTO comments(id, comment_text, comment_type_id, product_id, user_id, posted_to, answered, created, modified)
VALUES (5, 'Entrega em Manaus (AM) ?', 1, 1, 4, 0, 1, NOW(), NOW());

INSERT INTO comments(id, comment_text, comment_type_id, product_id, user_id, posted_to, answered, created, modified)
VALUES (6, 'Sim, o frete fica em R$ 45.00', 2, 1, 26, 5, 0, NOW(), NOW());

INSERT INTO comments(id, comment_text, comment_type_id, product_id, user_id, posted_to, answered, created, modified)
VALUES (7, 'Qual o frete para 45.987.330 ? Obrigado', 1, 2, 3, 0, 1, NOW(), NOW());

INSERT INTO comments(id, comment_text, comment_type_id, product_id, user_id, posted_to, answered, created, modified)
VALUES (8, 'R$ 34.00', 2, 2, 27, 7, 0, NOW(), NOW());

INSERT INTO comments(id, comment_text, comment_type_id, product_id, user_id, posted_to, answered, created, modified)
VALUES (9, 'Comprando 3 tenho desconto ?', 1, 2, 4, 0, 1, NOW(), NOW());

INSERT INTO comments(id, comment_text, comment_type_id, product_id, user_id, posted_to, answered, created, modified)
VALUES (10, 'Tem sim, já calculou o frete ?', 2, 2, 27, 9, 0, NOW(), NOW());

INSERT INTO comments(id, comment_text, comment_type_id, product_id, user_id, posted_to, answered, created, modified)
VALUES (11, 'Entrega em Manaus (AM) ?', 1, 2, 5, 0, 1, NOW(), NOW());

INSERT INTO comments(id, comment_text, comment_type_id, product_id, user_id, posted_to, answered, created, modified)
VALUES (12, 'Sim, o frete fica em R$ 45.00', 2, 2, 27, 11, 0, NOW(), NOW());