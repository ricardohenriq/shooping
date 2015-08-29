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

## 17 regsistros na tabela "categories" ------------------------------------------------

INSERT INTO categories (category_name, created, modified)
VALUES ('Alimentos', '2010-10-28 09:39:49', '2011-10-28 22:39:19');

INSERT INTO categories (category_name, created, modified)
VALUES ('Bebidas', '2010-10-28 09:39:49', '2011-10-28 22:39:19');

INSERT INTO categories (category_name, created, modified)
VALUES ('Móveis', '2010-10-28 09:39:49', '2011-10-28 22:39:19');

INSERT INTO categories (category_name, created, modified)
VALUES ('Utensilios de Cozinha', '2010-10-28 09:39:49', '2011-10-28 22:39:19');

INSERT INTO categories (category_name, created, modified)
VALUES ('Utensilios de Banheiro', '2010-10-28 09:39:49', '2011-10-28 22:39:19');

INSERT INTO categories (category_name, created, modified)
VALUES ('Utensilios de Limpeza', '2010-10-28 09:39:49', '2011-10-28 22:39:19');

INSERT INTO categories (category_name, created, modified)
VALUES ('Utensilios de Mesa', '2010-10-28 09:39:49', '2011-10-28 22:39:19');

INSERT INTO categories (category_name, created, modified)
VALUES ('Organizadores', '2010-10-28 09:39:49', '2011-10-28 22:39:19');

INSERT INTO categories (category_name, created, modified)
VALUES ('Eletrodomesticos', '2010-10-28 09:39:49', '2011-10-28 22:39:19');

INSERT INTO categories (category_name, created, modified)
VALUES ('Cama, Mesa e Banho', '2011-10-28 09:39:49', '2012-10-28 22:39:19');

INSERT INTO categories (category_name, created, modified)
VALUES ('Livros', '2011-10-28 09:39:49', '2012-10-28 22:39:19');

INSERT INTO categories (category_name, created, modified)
VALUES ('Eletroeletronicos', '2011-10-28 09:39:49', '2012-10-28 22:39:19');

INSERT INTO categories (category_name, created, modified)
VALUES ('Portáteis', '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO categories (category_name, created, modified)
VALUES ('Informática', '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO categories (category_name, created, modified)
VALUES ('Brinquedos', '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO categories (category_name, created, modified)
VALUES ('Automotivo', '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO categories (category_name, created, modified)
VALUES ('Ferramentas', '2014-10-28 09:39:49', '2016-10-28 22:39:19');

INSERT INTO categories (category_name, created, modified)
VALUES ('Vestuário', '2014-10-28 09:39:49', '2016-10-28 22:39:19');

INSERT INTO categories (category_name, created, modified)
VALUES ('Calçados', NOW(), NOW());

INSERT INTO categories (category_name, created, modified)
VALUES ('Acessórios', NOW(), NOW());

INSERT INTO categories (category_name, created, modified)
VALUES ('Escritório', NOW(), NOW());

INSERT INTO categories (category_name, created, modified)
VALUES ('Outros', NOW(), NOW());

##  registros na tabela "sub_categories" ---------------------------------------------

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Industrilizado', 1, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('In natura', 1, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Comida pronta', 1, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Desidratado', 1, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Organico', 1, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Raizes', 1, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Doces', 1, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Alcoolica', 2, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Sucos', 2, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Refrigerante', 2, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Sofás', 3, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Guarda-Roupas', 3, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Poltronas', 3, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Cadeiras, Bancos e Banquetas', 3, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Racks, Pinéis e Estantes', 3, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Cômodas e Sapateiras', 3, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Mesas', 3, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Camas', 3, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Colchões', 3, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Armários', 3, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Panelas', 4, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Filtros', 4, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Formas', 4, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Potes', 4, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Tábuas', 4, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Chaleiras', 4, '2008-10-28 09:39:49', '2009-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Acessórios', 4, '2009-10-28 09:39:49', '2010-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Porta Algodões', 5, '2009-10-28 09:39:49', '2010-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Porta Papel Higienico', 5, '2009-10-28 09:39:49', '2010-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Porta Cotonetes', 5, '2009-10-28 09:39:49', '2010-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Kit Banheiro', 5, '2009-10-28 09:39:49', '2010-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Saboneteiras', 5, '2009-10-28 09:39:49', '2010-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Escadas', 6, '2009-10-28 09:39:49', '2010-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Lixeiras', 6, '2009-10-28 09:39:49', '2010-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Rodos', 6, '2009-10-28 09:39:49', '2010-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Tábuas de Passar', 6, '2009-10-28 09:39:49', '2010-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Varais e Acessórios', 6, '2009-10-28 09:39:49', '2010-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Mangueiras e Acessórios', 6, '2009-10-28 09:39:49', '2010-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Copos', 7, '2009-10-28 09:39:49', '2010-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Taças', 7, '2009-10-28 09:39:49', '2010-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Jarras', 7, '2009-10-28 09:39:49', '2010-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Facas', 7, '2009-10-28 09:39:49', '2010-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Faqueiros', 7, '2009-10-28 09:39:49', '2010-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Talheres', 7, '2009-10-28 09:39:49', '2010-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Bandejas', 7, '2009-10-28 09:39:49', '2010-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Xícaras', 7, '2009-10-28 09:39:49', '2010-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Garrafas Termicas', 7, '2009-10-28 09:39:49', '2010-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Bandeijas', 7, '2010-10-28 09:39:49', '2011-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Boleiras', 7, '2010-10-28 09:39:49', '2011-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Acessórios para Bar', 7, '2010-10-28 09:39:49', '2011-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Cabides de Armário', 8, '2010-10-28 09:39:49', '2011-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Suporte de Parede', 8, '2010-10-28 09:39:49', '2011-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Caixas', 8, '2010-10-28 09:39:49', '2011-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Módulos e Prateleiras', 8, '2010-10-28 09:39:49', '2011-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Revisteiros', 8, '2010-10-28 09:39:49', '2011-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Organizadores de Fios', 8, '2010-10-28 09:39:49', '2011-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Geladeira', 9, '2010-10-28 09:39:49', '2011-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Freezer', 9, '2010-10-28 09:39:49', '2011-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Fogão', 9, '2011-10-28 09:39:49', '2012-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Micro-ondas', 9, '2011-10-28 09:39:49', '2012-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Lavadoura de Roupas', 9, '2011-10-28 09:39:49', '2012-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Lavadoura de Louças', 9, '2011-10-28 09:39:49', '2012-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Secadora de Roupas', 9, '2011-10-28 09:39:49', '2012-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Arcondicinado', 9, '2011-10-28 09:39:49', '2012-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Ventilador', 9, '2011-10-28 09:39:49', '2012-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Jogo de Leçol', 10, '2011-10-28 09:39:49', '2012-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Colcha', 10, '2011-10-28 09:39:49', '2012-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Edredom', 10, '2011-10-28 09:39:49', '2012-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Travesseiro', 10, '2011-10-28 09:39:49', '2012-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Almofada', 10, '2011-10-28 09:39:49', '2012-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Toalha de Banho', 10, '2011-10-28 09:39:49', '2012-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Toalha de Rosto', 10, '2011-10-28 09:39:49', '2012-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Roupão', 10, '2011-10-28 09:39:49', '2012-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Pano de Prato', 10, '2011-10-28 09:39:49', '2012-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Jogo Americano', 10, '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Avental', 10, '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Toalha de Mesa', 10, '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Infantil', 11, '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Administração e Negócios', 11, '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Direito', 11, '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Auto-ajuda', 11, '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Romance', 11, '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Fantasia', 11, '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Ficção Cientifica', 11, '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Informática', 11, '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Saúde', 11, '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Poesia', 11, '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Biografias', 11, '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('HDTV', 12, '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Home Teather', 12, '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('DVD e Bluray', 12, '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Mini/Micro System', 12, '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Celular', 13, '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Smartphone', 13, '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Tablet', 13, '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Telefone', 13, '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Notebook', 14, '2012-10-28 09:39:49', '2013-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('PC', 14, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('HD Externo', 14, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Roteador', 14, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Pen Drive', 14, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Blocos de Montar', 15, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Bonecos', 15, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Bonecas', 15, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Cadeiras, Mesinhas, Baús e Porta Objetos', 15, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Carros, Trens e Aviões', 15, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Desenhos e Pintura', 15, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Instrumentos Musicais', 15, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Jogos', 15, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Playgrounds e Casinhas', 15, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Praia, Lazer e Esportes', 15, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Massas de Modelar', 15, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Primeira Infância', 15, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Auto Som', 16, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Pneu', 16, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Óleo', 16, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('GPS Automotivo', 16, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('DVD Automotivo', 16, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Auto Falantes', 16, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Calotas', 16, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Capacete', 16, '2013-10-28 09:39:49', '2014-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Acessórios', 16, '2014-10-28 09:39:49', '2015-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Higienização e Polimento', 16, '2014-10-28 09:39:49', '2015-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Ferramentas Manuais', 17, '2014-10-28 09:39:49', '2015-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Aparadores de Grama', 17, '2014-10-28 09:39:49', '2015-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Cortadores de Grama', 17, '2014-10-28 09:39:49', '2015-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Sopradores de Folhas', 17, '2014-10-28 09:39:49', '2015-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Furadeira', 17, '2014-10-28 09:39:49', '2015-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Parafusadeira', 17, '2014-10-28 09:39:49', '2015-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Serra Circular', 17, '2014-10-28 09:39:49', '2015-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Plaina', 17, '2014-10-28 09:39:49', '2015-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Esmerilhadeira e Esmeril', 17, '2014-10-28 09:39:49', '2015-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Mini Retifica', 17, '2014-10-28 09:39:49', '2015-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Acessórios de Pintura', 17, '2014-10-28 09:39:49', '2015-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Bonés', 18, '2014-10-28 09:39:49', '2015-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Chapéus', 18, '2014-10-28 09:39:49', '2015-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Camisa', 18, '2014-10-28 09:39:49', '2015-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Camiseta', 18, '2014-10-28 09:39:49', '2015-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Cinto', 18, '2014-10-28 09:39:49', '2015-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Calça', 18, '2014-10-28 09:39:49', '2015-10-28 22:39:19');

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Casacos e Jaquetas', 18, '2010-10-28 09:39:49', NOW());

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Praia', 18, '2010-10-28 09:39:49', NOW());

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Tênis', 19, '2010-10-28 09:39:49', NOW());

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Sapatênis', 19, '2010-10-28 09:39:49', NOW());

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Sapato', 19, '2010-10-28 09:39:49', NOW());

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Chinela', 19, '2010-10-28 09:39:49', NOW());

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Botas', 19, '2010-10-28 09:39:49', NOW());

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Relógios', 20, '2010-10-28 09:39:49', NOW());

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Pulseiras', 20, '2010-10-28 09:39:49', NOW());

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Brincos', 20, '2010-10-28 09:39:49', NOW());

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Colares', 20, '2010-10-28 09:39:49', NOW());

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Multifuncional', 21, '2010-10-28 09:39:49', NOW());

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Fax', 21, NOW(), NOW());

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Papéis', 21, NOW(), NOW());

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Tonners e Tintas', 21, NOW(), NOW());

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Gaveteiro', 22, NOW(), NOW());

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Estações de Trabalho', 22, NOW(), NOW());

#! 7 registros na tabela "products" --------------------------------------------------

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Samsung Galaxy A5 Duos Branco 4G Orange', 1, 8, 20, 40,
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

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('TV LED 32 Smart LiteUSB HDMI LE 3278i Semp Toshiba', 2, 7, 300, 200,
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

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Motorola Moto X Android 42 GPS 3G 2 Chips 13GHZ', 3, 6, 150, 900,
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

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Liquidificador e Processador Reverse Red Oster 110V', 4, 5, 30, 60,
        'Liquidificador Delighter Oster. Possui potente motor reversível de 450 watts com 6 velocidades e funções pré-programadas para preparar
        coquetéis e batidas. Tem ainda jarra de vidro de 1,75 litros, a prova de choque térmico, com design fino que cabe na porta da geladeira.
        Pode ser lavada na lava-louças, tem tampa de bico acentuado e dobradiça para facilitar ao servir, lâmina removível de aço inoxidável ideal
        para triturar frutas congeladas e gelo para batidas, jarra que encaixa facilmente na base permitindo o manuseio com apenas uma mão, painel
        de controle de toque suave, simples e fácil de usar.',
        150.90, 140, 333, 2, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('MP3 Player Shuffle Clip FM Cabo USB Fone Suporta ate 8G', 1, 3, 900, 1200,
        'Controle suas músicas com um clique.
        Com o painel frontal do iPod shuffle, é mais fácil controlar as suas músicas. Pressione para reproduzir, pausar, avançar ou voltar. Clique
        onde quiser. O seu dedo está no comando.
        Escute do seu jeito.
        Talvez você seja do tipo espontâneo. Ou prefira um pouco de ordem. Mova o botão de acordo com o seu estilo. Deslize para a esquerda para
        ouvir suas músicas em ordem aleatória. Toque no meio para escutar as músicas em ordem.',
        5, 9.05, 222, 1, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Fone de Ouvido com MP3 Player C2 Sport Entrada Cartao SD Micro', 2, 1, 130, 200,
        'Fone sem fio com entrada para Cartão Micro SD igual ao usado para memória de celular, basta conectar o cartão com suas músicas preferidas
        e sair praticando o seu esporte predileto. Não é necessário nenhum acessório ou cabo. Mais mobilidade e liberdade para ir onde desejar Não
        se incomode com fios ou aparelhos. Detalhes ? Para carregar basta conectar o cabo USB ao seu aparelho, Mobilidade e prazer ao praticar o
        seu esporte preferido, e para momentos de descontração. MP3 Portátil em Formato de Fone de Ouvido Sem Fio Cabo USB 2.0 Conteúdo da caixa?
        1 Fone De Ouvido Sem Fio C2 Sport Mp3 Player Entrada Cartão Sd ? preto + Cabo USB Especificações técnicas ? Formatos de áudio: Mp3 , WMA,
        WAV Cartão Micro SD (Não Acompanha) Ruído: 86dB Frequência: 20HZ / 20KHZ Bateria: LiPo battery',
        13.99, 20.00, 99, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Bi Cama 0735 Branco Brilho Multimoveis Bebe Store', 3, 2, 200, 400,
        'Bicama mista, MDP/MDF, 15mm com pintura UV alto brilho.
         Todas as características de fabricação garantem um produto de qualidade comprovada, que combina tradição e modernidade de uma marca
         verdadeiramente conceituada neste segmento.',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Jogo de Mesa com 4 Cadeiras Tampo de Vidro Temperado Incolor', 3, 2, 200, 400,
        'Jogo de Mesa de Cozinha com 4 Cadeiras Tulipa com Tampo de Vidro Temperado Incolor, estrutura em aço carbono, acabamento em pintura epóxi,
        assentos em MDP de 12 mm com revestimento de espuma e corino.',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Cesta Basica de Alimentos Popular', 3, 2, 200, 400,
        'A Cesta Básica para Doação - Good Cestas, foi elaborada para atender de forma rápida, a demanda de compra dos seus clientes. Os seus
        produtos são de alta qualidade e de origem comprovada.',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Balas Alemas Fruit Candies', 3, 2, 200, 400,
        'BALAS ALEMÃS,UM PRODUTO COM GOSTINHO DIFERENTE UMA DELÍCIA, ALEM DE SER GOSTOSAS É UMA DECORAÇÃO PARA SUA CASA, PRODUTO LACRADO, COM PRAZO
        DE VALIDADE DE 3  ANOS, COM BALAS MISTAS SABORES, LARANJA, MORANGO, LIMÃO, FRAMBOESA, ABACAXI.',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Kit Brigadeiro Premium Festa Infantil 100 Unidades', 3, 2, 200, 400,
        'TODOS OS NOSSOS DOCINHOS SÃO FEITOS COM LEITE CONDENSADO E CHOCOLATE DE PRIMEIRA LINHA.
        Nosso prazo de produção é de 2 dias úteis.',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Tamarillo Tomate de Arvore Gigante Sementes Fruta para Mudas', 3, 2, 200, 400,
        'O Tamarilho por vezes escrito tamarillo, tomate-japonês, tomate-maracujá, tomate-inglês ou tomate-arbóreo, é o fruto da espécie Solanum
        betaceum, (Sinônimo Cyphomandra betacea), pertencente à família Solanaceae.
        Nativa dos Andes na América do Sul, é rica em vitamina A, sendo indicada para controlar o colesterol. É apreciada ao natural e seu sabor
        agridoce também pode ser explorado com sucesso no preparo de sucos, geleias ou compotas, salada de frutas e molhos para acompanhar carnes.
        É comercialmente cultivada na Nova Zelândia, Califórnia e Portugal. No Brasil, a fruta é cultivada em quintais, principalmente nos estados
        da Bahia, de Minas Gerais e de São Paulo. Na Bahia recebe o nome de "tomatão" e em São Paulo de "tomate-francês". Na região sul de Minas
        Gerais é popularmente conhecida como "tomate-de-árvore" ou "sangue-de-boi". No Paraná outro nome que ele recebe é o de "tomate-japonês".
        Em Portugal também é conhecida como "tomate-inglês".',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Frutos de Ora Pro Nobis 10 Frutos Frete Gratis', 3, 2, 200, 400,
        'A ora-pro-nóbis (Pereskia aculeata Mill.) é uma cactácea não endêmica do Brasil. Suas folhas são aproveitadas como alimento em algumas
        regiões do interior de Minas Gerais e são conhecidas pelos altos teores de ferro e proteínas1.
        Seu fruto é comestível mas seu aproveitamento é muito restrito em função do desconhecimento de suas propriedades e das dificuldades de
        coleta e processamento. Entretanto, estudos sobre sua constituição apontam para altos teores de carotenoides e compostos fenólicos,
        sendo rico em substâncias bioativas2.',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Mudas Fruta do Milagre Variedade Gigante', 3, 2, 200, 400,
        'Lindas mudas da fruta que tem despertado o mundo, agora na variedade "gigante", com frutos um pouco maiores e de maior produção;
        Possuem de 35 a 45cm e produzirão no primeiro ano (em média, 6 meses). São plantas em forma de arbustos rústicos, que exigem cuidados mínimos,
        podendo ser plantadas em vasos (40x40 ou 40 de diâmetro mínimos)',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Goji Berry 1KG Fruto Desidratado Pronta Entrega', 3, 2, 200, 400,
        'A Goji Berry é uma fruta originária do Tibete e da China que há muito tempo vem sendo utilizada para melhorar muitos aspectos da saúde humana.
        É rica em aminoácidos, vitaminas, ácidos graxos insaturados (como o ômega-3), poderosos antioxidantes e polissacarídeos. A melhor noticia é
        que, mesmo contendo tantos nutrientes importantes, essa frutinha tem poucas calorias.',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Hibisco Desidratado Cha 500G', 3, 2, 200, 400,
        'O hibisco (Hibiscus sinensis) é uma flor, rica em antocianina e polifenóis, potentes antioxidantes. Segundo estudos, a quantidade
        encontrada de antioxidante no hibisco é equivalente à quantidade encontrada nas uvas e vinho tinto.
        Os antioxidantes são capazes de neutralizar os radicais livres que são produzidos no organismo e podem ser prejudiciais à saúde, favorecendo,
        por exemplo, o envelhecimento precoce da pele e o aparecimento de algumas doenças.',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Whisky Johnnie Walker Double Black 1000ML', 3, 2, 200, 400,
        'Diferentemente do Black Label Clássico (12 anos), o Double Black possue o sabor defumado mais intenso.As características de Johnnie
        Walker Black Label, especialmente as notas defumadas, são ainda mais intensas em Johnnie Walker Double Black.
        Produzido a partir da combinação de alguns maltes exclusivos, selecionados especialmente para garantir o sabor defumado e envelhecidos em
        barris de carvalho, o que significa uma qualidade exemplar.Tem aromas turfados mais encorpados e intensos e sabor defumado.A produção é
        artesanal, feita em pequenos lotes, a partir de uísques de destilarias da costa oeste escocesa.',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Vodka Absolut Unique 1L Ed. Limitada Raridade', 3, 2, 200, 400,
        'Uma edição limitada com mais de quatro milhões de garrafas únicas em todo o Mundo, exclusivas e numeradas. Foram utilizadas 40 cores e
        aplicados diversos desenhos diferentes nas garrafas para chegar em quatro milhões de combinações artísticas únicas. Cada garrafa carrega
        um selo branco com seu número exclusivo de fabricação e com as informações sobre a bebida.',
        30.30, 25.00, 111, 0, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Espumante Cava Freixenet Carta Nevada 750ML', 3, 2, 200, 400,
        'De coloração amarelo palha com reflexos dourados, limpo e brilhante, com borbulhas de tamanho médio formando uma bela coroa. Nariz franco
        e limpo. Destacam-se aromas florais (flores blancas) e de fruta fresca, com sutis aromas cítricos. Boa estrutura em boca, fresco, suave
        acidez, bom comportamento do gás carbônico com um bouquet muito particular. Aparecem os tons florais no retronasal.',
        30.30, 25.00, 111, 0, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Coca-Cola Vanilla Sabores Baunilha Caixa 12 Latas', 3, 2, 200, 400,
        'Coca-Cola Vanilla Sabores Baunilha Caixa 12 Latas',
        30.30, 25.00, 111, 0, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Refrigerante Crush Orange Importado 12 Latas', 3, 2, 200, 400,
        'Refrigerante Crush Orange Importado 12 Latas',
        30.30, 25.00, 111, 0, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Refrigerante Canada Dry Ginger Ale Caixa 12 Latas', 3, 2, 200, 400,
        'Refrigerante Canada Dry Ginger Ale Caixa 12 Latas',
        30.30, 25.00, 111, 0, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Ferro de Passar Roupa a Vapor com Caldeira Delonghi', 3, 2, 200, 400,
        'Ferro de passar com caldeira VVX1475 da Delonghi. Possui compartimento para fios, base dupla (cerâmica + aço inox) patenteada o que
        resulta num deslizamento perfeito em todos os tipos de tecido e eficiência reforçada com o uso dos dois materiais, opção de vapor duplo
        que pode ser acionado de forma concentrada somente na ponta ou em toda a superfície da base, painel com tecla de liga/desliga e controle
        do nível de vapor, economia de água e energia de até 35% e maior durabilidade e eficiência.',
        30.30, 25.00, 111, 0, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Lencol Elastico 2 Fronhas Quenn Malha-Penteada 100 Algodao', 3, 2, 200, 400,
        'Nada mais gostoso do que uma boa noite de sono, em meio a lençóis com toque macio. Esta peça é feita em malha 100% algodão 30/1, fio
        penteado, o que garante máximo conforto e agradável descanso. Disponível em diversas cores, oferece várias opções para combinar com a
        decoração do quarto.',
        30.30, 25.00, 111, 0, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Manta de Sofa Gigante Tipo Capa de Sofa Algodao 240X180M', 3, 2, 200, 400,
        'Use no seu sofá lindas mantas em algodão,produto natural que realça a beleza de seu ambiente decorando sua sala dando um ar de sofisticação.
        Pode ser usada como  uma peça decorativa ou para proteger seu sofá.Usando-a dobrada como ilustra a foto, dá um ar de requinte e usando aberta
        protege de poeira e de animais que eventualmente podem estragar seu sofá .Protegendo seu sofá do dia a dia você pode economizar em uma reforma
        ou até mesmo na troca.',
        30.30, 25.00, 111, 0, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Divergente Insurgente Convergente Quatro 04 Livros', 3, 2, 200, 400,
        'Divergente é o primeiro livro da série de mesmo nome escrita pela autora norte-americana, Veronica Roth. Foi lançado nos Estados Unidos
        em 25 de Abril de 2011, chegando ao Brasil e Portugal em 2012. Seu segundo livro, Insurgente, foi lançado em 1º de Maio de 2012 nos Estados
        Unidos, enquanto o terceiro, Convergente em Outubro de 2013. A série foi comparada a Jogos Vorazes virando um grande sucesso e conquistando
        cada vez mais leitores. Conheça mais dessa trilogia imperdível!',
        30.30, 25.00, 111, 0, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Box-Supernatural Kit com 05 Livros', 3, 2, 200, 400,
        'Box Supernatural - Contendo 5 Títulos ; o Diário de John Winchester- Capa Dura. o Livro dos Monstros- Espíritos, Demônios e Ghouls. o
        Guia de Caça de Bobby Singer. Nunca Mais e Guerra dos Filhos.',
        30.30, 25.00, 111, 0, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Colecao 8 Livros Fabulas a Cigarra e a Formiga Lebre Raposa', 3, 2, 200, 400,
        'Ao mesmo tempo em que desenvolvem a capacidade de fantasia infantil, as consagradas fábulas de Esopo e La Fontaine fornecem importantes
        instruções de vida, favorecendo o poder de discernimento da criança e despertando-lhe coragem para trilhar seu caminho no mundo, consciente
        da possibilidade e importância de lutar por valores e comportamentos positivos.',
        30.30, 25.00, 111, 0, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Tablet Positivo Duo ZX3020 Prata e Preto 2 em 1 Quad-Core 16GB', 3, 2, 200, 400,
        'O novo notebook híbrido Positivo Duo ZX integra o que há de melhor em tablets e notebooks, unindo as duas tecnologias em um produto moderno
        e sofisticado. A tela touch destacável é um poderoso tablet de 10 polegadas, Quad-Core com Windows 8, para muito desempenho e diversão.
        Conectando à doca, transforme o tablet em um notebook e produza conteúdos de forma mais eficiente e confortável, com teclado, touchpad e porta
        USB extra para conectar dispositivos sem necessidade de adaptadores.',
        30.30, 25.00, 111, 0, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Pen Drive Titan 8GB Preto Multilaser PD601', 3, 2, 200, 400,
        'Salve tudo que precisa e tenha sempre com você o Pen Drive Titan 8 GB. Leve e de formato anatômico ele permite que você tenha sempre à
        mão suas músicas, fotos, vídeos e arquivos pessoais.
        Compatível com Windows 98 e superiores/ Mac OS 9.0 e superiores; a conexão USB 2.0 e taxa de transmissão de 13 MB/s (leitura) e 5 MB/s
        (gravação) faz com o que ele seja rápido nas tarefas do dia a dia.
        O Titan ainda acompanha uma cordinha, para que você o prenda no estojo, chaveiro ou alça interno da bolsa, assim você sempre irá encontrá-lo.',
        30.30, 25.00, 111, 0, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('HD Externo Portatil Samsung M3 1TB USB 3.0', 3, 2, 200, 400,
        'Graças ao design leve e compacto, o Samsung M3 pode ser transportado com enorme facilidade. O HD externo garante que você consiga levar
        seus arquivos de fotos, vídeos, músicas e muito mais para qualquer lugar. Ao todo, o produto oferece um espaço generoso de 1TB. Para
        assegurar que os dados mais importantes não sejam violados, basta utilizar os recursos do SecretZone e SafetyKey. Compatível com Windows
        e Mac, aparelho se destaca pela velocidade impressionante. A taxa de 480 Mbps e a interface USB (2.0 e 3.0) deixam muito mais fácil a
        transferência de conteúdos. O equipamento é bastante fácil de usar, já que basta ser plugado para que comece a funcionar. Nada de CDs ou
        softwares de instalação.',
        30.30, 25.00, 111, 0, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Tablet Semp-Toshiba TA0703G 16GB 7 WI-FI 3G', 3, 2, 200, 400,
        'O Tablet TA0703G foi desenvolvido para proporcionar aos usuários um desempenho incrível em todas as tarefas que serão utilizadas, com a
        performance do processador Rockchip Dual Core você terá uma navegação ágil e eficaz. Aliado a memória interna de 16 GB e capacidade de
        expansão para 32 GB, você terá armazenamento de sobra para se entreter a vontade e realizar todos os tipos de tarefa com segurança, sem perder nenhum arquivo.',
        30.30, 25.00, 111, 0, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Multifuncional Colorida Wireless 2546 HP', 3, 2, 200, 400,
        'Esse all-in-one HP Deskjet de custo acessível oferece impressão sem fios fácil de qualquer lugar da sua casa, além de digitalização e
        cópia — por menos. Configure imediatamente e conte com os resultados de qualidade de que você precisa, usando cartuchos de tinta HP
        originais de baixo custo.',
        30.30, 25.00, 111, 0, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Fax Panasonic KX FT932BR com Bina Novo Garantia 1 Ano', 3, 2, 200, 400,
        'Você pode enviar o mesmo documento para até 20 números, se você armazenar ítens na agenda telefônica ou na discagem rápida na memória de
        multitransmissão.
        Os números são mantidos na memória de multitransmissão , permitindo que sejam reutilizados com frequência.',
        30.30, 25.00, 111, 0, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Telefone Sem Fio Philips D1201BBR Dect 60 Bina Preto', 3, 2, 200, 400,
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

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Bateria Musical Infantil Transformers 100 Original Kids', 3, 2, 200, 400,
        'Utilidades interativas Bateria Acúsitca com som radical para seu filho . Prato de metal e Bumbo com cor de metal reforçado , surporte de
        bumbo acabamento personalizado com o Maximo de uma Bateria proficional . A Bateria transformes vai criar muito momentos de emoção para
        você e seu filho invente suas batidas e torne-se um verdadeiro Rock Star Itens inclusos Acompanha: 01 - Tom Pequeno - 01 - Tom medio e tom
        grande - 01 - Prato - Suporte para Prato - 01 - Par de baquetas Marca Conthey By Kids',
        30.30, 25.00, 111, 0, '2012-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Mini Helicoptero V911 4 Canais com Gyro e Controle 24GHZ', 3, 2, 200, 400,
        'O primeiro helicóptero RC que pode voar ao ar livre em clima de vento (eólica exterior grau 3-4).
        Projeto pioneiro única hélice, pode evitar consideravelmente a resistência do vento.
        Alta qualidade dossel de metal ultrafino com peso ultra-leve e forte resistência de impacto.
        Asa rotor de alta tenacidade.
        Melhor desempenho do que voando ALIGN T-REX 100 S: extremamente estável e extremamente ágil.
        O controle remoto é projetado com um disply LCD para uma operação mais fácil e mais preciso.',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Tapete Infantil EVA Alfabeto Numeros Alfanumerico Bebe 40PCS', 3, 2, 200, 400,
        'O Cubo Alfanumérico é um tapete colorido atóxico e lavável.
        Composto por quarenta peças em E.V.A para crianças a partir de três anos. Ele ajuda a criança estimulando a conhecer e a brincar com os
        números. Pode ser usado como decoração, para abafar o som e também amortecer impacto.',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Piano Teclado Musical Infantil Sons Eletrnico Frete Gratis', 3, 2, 200, 400,
        'BEBÊ MUSICAL PIANO, ALEGRE, DIVERTIDO, REPLETO DE CORES E SONS. AUXILIA NO DESENVOLVIMENTO PEDAGÓGICO DA CRIANÇA ESTIMULANDO A CAPACIDADE
        VISUAL, AUDITIVA E A COORDENAÇÃO MOTORA.
        POSSUI 3 FUNÇÕES DIFERENTES E LUZES PISCANTES, A CRIANÇADA VAI ADORAR!',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('DVD Player H Buster HBD 6680 Tela 27 Toca CD USB MP3 Radio', 3, 2, 200, 400,
        'Esse DVD automotivo inovador e moderno possui frente Flip Down removível e controle remoto slim, assim você comanda a festa com
        tranquilidade e pode guardar o aparelho sempre que quiser.
        A tela LCD colorida tem formato Wide 16:9 e resolução 320x240, reproduzindo áudios, fotos e vídeos com excelente definição, através de CDs,
        DVDs e entrada USB frontal. O DVD H-Buster é uma ótima opção para quem busca melhorar o entretenimento no carro, entregando algo a mais
        por muito menos.',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Caixa Trio 100 Selenium 2 Modulos Taramps Frete Gratis', 3, 2, 200, 400,
        'Através deste sistema você poderá reproduzir sons em todas as faixas de áudio.Reproduzindo entre 40Hz e 25000Hz, conseguindo assim uma
        qualidade incomparável.',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Capas de Courvin para Bancos Automotivos Frete Gratis', 3, 2, 200, 400,
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

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Kit Caixa Trio Completa 7000W 2 12 4D 2T Modulo 4000W', 3, 2, 200, 400,
        'Caixa de som automotivo completa: 2 - subwoofer de 12", + 4 driver, + 2 tweeter, + módulo de 1.950w Rms total e 4 corneta junto já com
        4 capacitores.',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Modulo Amplificador Taramps TS 800 X4 800W RMS RCA Sedex', 3, 2, 200, 400,
        'Esse Módulo Amplificador Taramps TS 800x4 de 2 Ohms tem todos os requisitos que você precisa para deixar seu som muito mais potente e tunado.
        Elaborado para atender sons graves, médios e agudos, o Amplificador TS800X4 Taramps conta com 4 saídas de 240W a 13,8VDC, totalizando uma
        potência de 960W RMS. O Módulo Amplificador já possui crossover embutido e controle “bass boost” que ajuda controlar e reforçar mais ainda os
        graves. Além de possuir 4 entradas RCA, controle de ganho de potência e 2 Ohms',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Maleta de Ferramentas com 142 Pecas BR Tools', 3, 2, 200, 400,
        'A Maleta de Ferramentas 142 peças BR Tools foi desenvolvida para facilitar sua vida na hora de transportar e armazenar suas ferramentas.
        Composto por 142 ferramentas é o kit ideal para você ter em sua residencia, escritório para auxiliar nos mais diversos reparos, as
        ferramentas são fabricadas em aço carbono que garantem maior durabilidade de seu produto. A maleta de ferramentas com 142 peças conta com
        a qualidade BR Tools, marca de máquinas e ferramentas com qualidade e desempenho avançados.',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Jogo de Ferramentas 110 Pecas Mayle', 3, 2, 200, 400,
        'Jogo de Ferramentas 110 Pecas Mayle',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Kit Jogo Ferramentas e Furadeira Maleta 110PCS Frete Gratis', 3, 2, 200, 400,
        'Kit Jogo Ferramentas e Furadeira Maleta 110PCS',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Camisa 3D Caveira Breakthough The Mountain no Brasil', 3, 2, 200, 400,
        'As camisas são pré-encolhidas. São lavadas e secas no processo de tingimento, portanto, não deve haver nenhum encolhimento perceptível.
        Camisetas são feitas de 100% algodão e são tingidas à mão.
        Todos os desenhos camiseta são feitas a partir de água à base de tintas que são tingidos no tecido em si. O processo de impressão dá estas
        camisas um toque macio; ao contrário do plástico pesado "escudo" criado por serigrafia.
        Lavagem: Antes de usar, lave-os separadamente em água fria.',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Camisetas Engracadas Dandas Filmes Serie Games Super Herois', 3, 2, 200, 400,
        'Camisetas Engracadas Dandas Filmes Serie Games Super Herois',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Camisa Social Slim Fit Importada 200 Novos Modelos', 3, 2, 200, 400,
        'FABRICAÇÃO PRÓPRIA, PRODUTO DISPONIVEL A PRONTA ENTREGA CASO NAO ESTEJA DISPONIVEL EM ESTOQUE SERÁ FABRICADO E ENVIADO NO PRAZO MAXIMO DE
        5 DIAS UTEIS.
        Acompanhamos a sua compra desde o pedido até a chegada dele à sua casa e assim, te damos toda a assistência necessária para uma compra segura.',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Calca Jeans Preta Skinny Sarja Jeans', 3, 2, 200, 400,
        'A calça skinny é um modelo que caiu no gosto de todas as mulheres, afinal, ela fica bem em todos os tipos de corpos e combina com tudo
        que é roupa. Mas lembre-se sempre da regra de ouro para compôr looks com esse tipo de calça: calça justa embaixo, a parte de cima deve
        ser larguinha! Fazer sobreposições deixa o look bem moderno. Aposte nas sobreposições camisa + cardigan ou sweater. Se você quiser um
        visual mais rocker, aposte nas jaquetas de couro modelo perfecto!',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Calca Combat Forhonor Top de Linha Ripstop Design Marines', 3, 2, 200, 400,
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

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Kit com 3 Cinto em Gorgoro Cafetroy', 3, 2, 200, 400,
        'O Kit 3 Cinto Sandro Moscoloni são todos confeccionados em gorgorão com recortes em couro legítimo. Com largura de 4 cm. A fivela é presa
        com parafuso de regulagem, permitindo redução do tamanho original.',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Adidas Springblade Drive 4 Original 20 Pronta Entrega', 3, 2, 200, 400,
        'Para os apaixonados por estilo e conforto, o Tênis Adidas Springblade Drive é a pedida de certa! Com uma energia explosiva aliada a um
        design inovador, proporciona impulso a cada passo.',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Tenis Mizuno Prophecy 2 Original Frete Gratis Pronta Entrega', 3, 2, 200, 400,
        'Em sua quarta versão, o Tênis Mizuno Wave Prophecy 4 Masculino mantém suas origens em proporcionar o máximo em amortecimento para o seu
        melhor desempenho nas atividades físicas. Seu cabedal todo envolto com “AIRmesh”, possui um tecido de tramas abertas que proporciona maior
        ventilação, garantindo o máximo de conforto e evitando odores indesejáveis aos seus pés. Com tecnologia “DINAMOTION FIT”, a peça permite a
        interação perfeita do calçado com os movimentos dos pés, minimizando possíveis contusões, devido a sua construção especial que promove
        maior estabilidade, aliviando o stress nas articulações, além de auxiliar na melhoria de sua performance. A entressola por sua vez, conta
        com a tecnologia “U4ic” (pronuncia-se euphoric), desenvolvida com uma nova composição de polímeros, tornando o calçado 36% mais leve do que
        um com EVA comum, resultando em uma textura mais macia, de alta absorção de impactos e o melhor: reduzindo o tempo de descanso do tênis entre
        suas atividades para apenas oito horas, diferente do EVA, que necessita de vinte e quatro horas de descanso entre as atividades.',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Bota Masculina Sandro Moscoloni em Couro Worker Amarelo', 3, 2, 200, 400,
        'Com um visual rústico, a Bota Challenger Off Road foi desenvolvida para proporcionar estilo, conforto e durabilidade. Confeccionada em
        couro floater, a Bota é indicada para operações de longa duração, operações em terrenos acidentados e úmidos. O modelo Challenger, também
        compõe diversos estilos mais charmosos, sempre ao lado de peças em diferentes tons. Devido ao seu visual moderno, o modelo faz o estilo
        de vários homens, que fazem de seu visual parte de sua personalidade. Ideal para quem gosta de aventuras!',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Sapato Social em Couro Verniz 100 Legitimo Frete Gratis', 3, 2, 200, 400,
        'Os sapatos masculinos são o acessório que mais valoriza a produção do homem em qualquer ocasião.
        Os sapatos em Couro Verniz são indicados para compor os looks mais formais e chiques. A linha Veneza é extremamente elegante, sofisticada,
        luxuosa e transforma um simples visual formal com muito requinte.',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Sapato Importado Feminino Glitter Pronta Entrega no Brasil', 3, 2, 200, 400,
        'Confeccionados com o mais alto padrão de qualidade Produto a pronta entrega!!
        Totalmente livre de qualquer tipo de tributação feita pela Alfândega.
        OBS: Os sapatos poderam ter solados vermelho ou preto, dependendo da disposição em estoque.',
        30.30, 25.00, 111, 0, '2010-10-28 09:39:49', '2011-10-28 09:39:49');

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Sapatenis em Couro Legitimo Sandro Moscoloni Street', 3, 2, 200, 400,
        'Produzido em couro Látego em cor Marrone. O Sapato Sandro Moscoloni Streer, apresenta pespontos em torno do modelo e ilhoses nos passantes
        do cadarço. Detalhe de tira em gorgurão itálico na língua do calçado. Parte interior em couro com material têxtil. Palmilha macia com um
        sistema exclusivo (Flexibility 360°), proporcionando muito conforto durante o uso e um caminhar suave. Possui solado de borracha, com sistema
        de amortecimentos de impactos (SYSTEM GEL CONSTRUCTION); que garante maior conforto e estabilidade em diferentes tipos de solo.',
        30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Relogio Invicta Pro Diver 6981 Ouro 18K', 3, 2, 200, 400,
        'Um classico Invicta que não pode faltar na sua coleção. Sua pulseira em borracha com detalhes em aço inoxidável torna esse relógio um
        coringa, para uso com roupas mais formais ou esportivas. Tem sido a escolha de entrada de muitos colecionadores no mundo invicta. Um
        relógio facil de combinar e que agrada todos os gostos. Como presente é escolha certa e sem risco.',
        30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Smartwatch U8 Relogio Inteligente Bluetooth Android Iphone', 3, 2, 200, 400,
        'Novo relógio inteligente U8 UWatch Fit para Smartphones IOS da Apple, Android, iphone 4 / 4S / 5 / 5C / 5S, Android Samsung S2 / S3 / S4 /
        Note 2 / Nota 3, HTC, Sony, Blackberry da LEMFO.
        Ideal para práticas de esportes outdoor, esse companheiro inteligente é Podômetro, Cronômetro, calendário, chamada Sync, Calculadora, Relógio,
        Alarme, Anti-perda,  medidor de altitude e seu Fotografo!
        Controla seu smartphone a distancia para posicionar e clicar aquela foto!
        Sabe aquela hora que você queria tirar a foto da galera, mas não tá entrando? Pois é, esse dispositivo é ótimo para isso. Só posicionar o seu
        smart no lugar pra tirar foto, e o clique fica por conta do U8.',
        30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Relogio Feminino com Estojo 26 Pulseiras 26 Aros Relogios', 3, 2, 200, 400,
        'Este relógio analógico, além de super moderno, possui pulseira de silicone . Com 25 cores sortidas . Ideal para
        quem é pontual e gosta de estar sempre na moda!',
        30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Relogio de Pulso Vintage Feminino em Couro Brinde Exclusivo', 3, 2, 200, 400,
        'Relógio de pulso feminino, excelente qualidade e durabilidade! Pulseira de Couro Ajustavél. Analógico, Cores: Azul Pingente Folha,
        Vermelho Pingente Coração, Verde Pingente Coração, Marrom Pingente Folha.',
        30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Pulseira Bracelete Masculina Tribal Couro 2 Unidades Frete Gratis', 3, 2, 200, 400,
        'Pulseira Masculina Couro Legítimo (2 Peças)',
        30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Pulseira Masculina Bracelete Couro Legitimo Preto Aco Inox', 3, 2, 200, 400,
        'Pulseira Masculina confeccionada em couro legítimo, com detalhes em aço inoxidável Trabalhado.',
        30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Pulseira Feminina Victoria Secrets Cristal Banhado Ouro 18K', 3, 2, 200, 400,
        'Linda Pulseira Feminina Victoria´s Secret Cristal  Swarovski Alto Brilho Banhada a Ouro 18k Tamanho da pulseira  23 centímetros, podendo
        ser ajustado para qualquer espessura de pulso menor que 23 cm.
        Linda e delicada pulseira para mulheres surpreendentes.
        Uma ótima opção para presentear alguem especial.
        Produto a pronta entrega com envio imediato após confirmação do pagamento.',
        30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Caixa com 10 Resmas Papel Folha A4 75G Reciclado Chamex', 3, 2, 200, 400,
        'Papel de superfície lisa, totalmente reciclado, possui excelente qualidade de impressão. Ideal para diferenciar os trabalhos por possuir
        textura única e ser reciclado.
        Tipos de impressão.
        Off Set, Tipografia, Serigrafia, Relevo Seco, Hot Stamping ,Jato de tinta e Laser.
        Utilização.
        Relatórios, cardápios, currículos, embalagens, cartazes, etc.',
        30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Carimbos para Professoras Premium 20 Original', 3, 2, 200, 400,
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

## 7 registros na tabela "features" ----------------------------------------------------

INSERT INTO features (feature_name, created, modified)
VALUES ('Altura', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (feature_name, created, modified)
VALUES ('Largura', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (feature_name, created, modified)
VALUES ('Profundidade', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (feature_name, created, modified)
VALUES ('Peso', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (feature_name, created, modified)
VALUES ('Validade', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (feature_name, created, modified)
VALUES ('Garantia', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (feature_name, created, modified)
VALUES ('Cor', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (feature_name, created, modified)
VALUES ('Material', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (feature_name, created, modified)
VALUES ('Sistema Operacional', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (feature_name, created, modified)
VALUES ('Modelo', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (feature_name, created, modified)
VALUES ('Resolução da câmera', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (feature_name, created, modified)
VALUES ('Câmera traseira', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (feature_name, created, modified)
VALUES ('Câmera frontal', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (feature_name, created, modified)
VALUES ('Som', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (feature_name, created, modified)
VALUES ('Grava vídeo', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (feature_name, created, modified)
VALUES ('Slot para cartão', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (feature_name, created, modified)
VALUES ('Cartão incluso', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (feature_name, created, modified)
VALUES ('Rádio FM', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (feature_name, created, modified)
VALUES ('MP3 player', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (feature_name, created, modified)
VALUES ('Bluetooth', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (feature_name, created, modified)
VALUES ('Bluetooth Estéreo (ouça suas músicas em um dispositivo Bluetooth)', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (feature_name, created, modified)
VALUES ('Wi-Fi', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (feature_name, created, modified)
VALUES ('Conectividade', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (feature_name, created, modified)
VALUES ('Suporte a GPS', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (feature_name, created, modified)
VALUES ('Mensagens', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (feature_name, created, modified)
VALUES ('Toques', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (feature_name, created, modified)
VALUES ('Processador', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO features (feature_name, created, modified)
VALUES ('RAM', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Sintonizador de TV', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Tecnologia', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Quadriband GSM', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Frequências', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Dual Chip', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Tipo do Chip', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Memória interna', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Resolução do visor/display (pixels)', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Tamanho do visor (cm)', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Cor', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Observações', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Tipo de tela', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('DTVi', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('PVR Ready', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Closed Caption', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Canais Favoritos', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Sleep Timer e Timer On', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Bloquear canais e Bloqueio por classificação indicativa', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('EPG', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('HDMI ARC', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Entradas HDMI', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Entrada de Vídeo Composto (áudio e vídeo)', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Entrada para PC', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Porta LAN - para conexão de rede', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Saída para fone de ouvido', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Entrada USB', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Estéreo Surround', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Modo preferencial de som', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Auto volume', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Potência de saída de áudio', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Modo preferencial de imagem', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Ajuste da luz de fundo', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Voltagem', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Stand by', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Consumo Médio', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Wi-fi', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Capacidade do Copo', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Código do Produto', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Funções', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Velocidade', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Marca', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Alimentação', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Portátil (sem fio)', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Cor', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('SAC', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Fornecedor', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Código de Barras', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Formatos reproduzidos de áudio', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Formatos reproduzidos de vídeo', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Formatos reproduzidos de fotos', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Formatos reproduzidos de textos', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Duração da Bateria em uso', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Duração da Bateria em standby', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Entrada para qual modelo de Cartão de Memória', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Memória interna', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Conexões', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Idiomas', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Alimentação', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Coleção', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Faixa de Peso Suportado (Kg)', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Classificação', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Acessórios', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Pés (Material)', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Acabamento', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Estrutura', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Assentos', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Tampo', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Quantidade de itens', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Tipo', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Fabricado em', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Sabor', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Validade', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Cultivo', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Usos', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Nome Cientifico', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Forma de entrega', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Nome popular', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Origem', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Caraterísticas', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Porte', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Flores', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Luz', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Solo', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Clima', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Regas', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Podas', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Adubação', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Graduação Alcoólica (%)', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Peso liquido', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Ingredientes', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Aroma', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Mais Informações Tecnicas', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Temperatura ideal', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Placa antiaderente', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Vapor', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Conteúdo da Embalagem', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Capacidade', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Lençol com elástico', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Medida do lençol de baixo', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Medida fronha', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Lençol com elástico', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Bordado', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Estampado', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Medidas do Colchão', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Antialérgico', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Observações', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Autor(a)', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Título', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Subtítulo', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('ISBN', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Páginas', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Edição', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Tipo de capa', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Formato', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Editora', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Ano', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Idioma', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Processador', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Modelo Processador', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Cache', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Memória RAM', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Placa Mãe', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('HD', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Drives', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Placa de vídeo', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Teclado', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Mouse', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Sistema Operacional', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Conector', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Memória (GB)', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Resistente a Água', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Resistente a Quedas', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Leitor de Digitais - Biométrico', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Proteção com Criptografia', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Possui Tecnologia Ready Boost', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Sistema Operacional Compatível', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Softwares inclusos', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Velocidade de impressão', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Resolução de impressão', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Ciclo de trabalho mensal', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Tempo para a primeira Preto e Branco', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Tempo para a primeira Colorida', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Profundidade de Bits', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Resolução de Digitalização', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Tipo de papel suportado', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Capacidade de papel suportado', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Capacidade de entrada e saída de papel', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Cartuchos/Toners compatíveis', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Certificações', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Nível de ruído', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Agenda', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Bobina inicial', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Identificador de chamada', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Memória de recepção sem papel', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Número de discagem rápida', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Rediscagem automática', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Registro de chamadas', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Transmissão programada', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Transmissão internacional', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Velocidade de transmissão', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Velocidade/Modem', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Sistema de compressão', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Tipo de impressão', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Modo de discagem:', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Viva-voz', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Secretária eletrônica', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Acompanha ramal', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Expansível até', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Conferência de chamadas', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Ajuste no volume da campainha', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Fixável na parede', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Faixa etária', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Diâmetro do rotor principal', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Diâmetro do rotor de cauda', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Tempo de vôo', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Tempo de Recarga', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Distância de alcance', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Altura de vôo', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Rádio', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Mídias compatíveis', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Função Repeat', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Iluminação das teclas', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Painel removível', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Forração removível', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Forração lavavel', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Número De Canais', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Potência Máx.', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Sensibilidade de Entrada', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Distorção Harmônica Total (THD)', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Separação entre Canais (Crosstalk)', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Relação Sinal/Ruído', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Resposta De Frequência (Full Range)', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Crossover', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Impedância de Entrada', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Sistema de Proteção', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Tensão de Alimentação Mínima', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Tensão de Alimentação Máxima', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Consumo em Repouso', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Consumo Máximo Musical', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Consumo Máximo em Sinal Senoidal', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Uso Ideal', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Pré-encolhida', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Lavagem', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Tamanho', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Manga Tipo', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Gola', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Tecido Gola', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Ombro Tamanho', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Busto Tamanho', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Manga Tamanho', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Cintura Tamanho', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Quadril Tamanho', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Coxa Tamanho', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Canela Tamanho', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Gancho frente Tamanho', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Gancho traseiro Tamanho', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Entrepernas Tamanho', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Bolsos', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Fechamento/Abertura', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Numeração', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Cabedal (Parte Superior Externa)', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Solado', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Lingueta', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Palmilha', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Forro', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Ajuste', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Tamanho do Cano', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Tamanho do Salto', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Embalagem', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Diâmetro da Caixa', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Profundidade da Caixa', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Largura da Pulseira', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Cor do mostrador', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Material da Caixa', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Material do Visor', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Material da Pulseira', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Prova d\'água', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Forro', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Movimento', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Touch Screen', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Vibra-call', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Mostrador de Horas', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Redes Sociais', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Alarme anti-perda', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Altimetro', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Hodometro', NOW(), NOW());

INSERT INTO features (feature_name, created, modified)
VALUES ('Sincronização', NOW(), NOW());

# 10 registros na tabela "product_features" --------------------------------------------

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('30 Cm', 1, 1, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('2 Kg', 2, 2, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('30 Dias', 3, 3, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('6 Meses', 4, 4, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Azul', 5, 5, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('Madeira', 6, 6, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('40 Cm', 7, 7, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('20 Kg', 2, 1, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('90 Dias', 3, 2, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO product_features (feature_value, feature_id, product_id, created, modified)
VALUES ('2 Meses', 4, 3, '2011-10-28 09:39:49', '2012-10-28 09:39:49');

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

#-----

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

INSERT INTO promotions (promotion_name, duration, date_start, date_end, created, modified)
VALUES ('Promoção de férias', 5, '2010-10-28 09:39:49', '2011-10-28 09:39:49', NOW(), NOW());

INSERT INTO promotions (promotion_name, duration, date_start, date_end, created, modified)
VALUES ('Promoção de primavera', 7, '2011-10-28 09:39:49', '2012-10-28 09:39:49', NOW(), NOW());

INSERT INTO promotions (promotion_name, duration, date_start, date_end, created, modified)
VALUES ('Promoção de outono', 9, '2012-10-28 09:39:49', '2013-10-28 09:39:49', NOW(), NOW());

INSERT INTO promotions (promotion_name, duration, date_start, date_end, created, modified)
VALUES ('Promoção de verão', 2, '2013-10-28 09:39:49', '2014-10-28 09:39:49', NOW(), NOW());

INSERT INTO promotions (promotion_name, duration, date_start, date_end, created, modified)
VALUES ('Promoção de inverno', 14, '2014-10-28 09:39:49', '2017-10-28 09:39:49', NOW(), NOW());

# 8 registros na tabela "product_promotions" -----------------------------------------

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

# 9 registros na tabela "new_banners" -------------------------------------------------

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