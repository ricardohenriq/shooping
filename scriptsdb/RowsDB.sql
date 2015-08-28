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
VALUES ('Chamex', 21, NOW(), NOW());

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Tonner', 21, NOW(), NOW());

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Gaveteiro', 22, NOW(), NOW());

INSERT INTO sub_categories (sub_category_name, category_id, created, modified)
VALUES ('Estações de Trabalho', 22, NOW(), NOW());

#! 7 registros na tabela "products" --------------------------------------------------

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Samsung Galaxy A5 Duos Branco 4G Orange', 1, 8, 20, 40, 'Muito Boa', 550.50, 400, 777, 1, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('TV LED 32 Smart LiteUSB HDMI LE 3278i Semp Toshiba', 2, 7, 300, 200, 'Quente', 20.20, 25, 555, 2, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Motorola Moto X Android 42 GPS 3G 2 Chips 13GHZ', 3, 6, 150, 900, 'Bom', 15, 12.90, 444, 1, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Liquidificador e Processador Reverse Red Oster 110V', 4, 5, 30, 60, 'Toca musica', 150.90, 140, 333, 2, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('MP3 Player Shuffle Clip FM Cabo USB Fone Suporta ate 8G', 1, 3, 900, 1200, 'Bom dimais da conta', 5, 9.05, 222, 1, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Fone de Ouvido com MP3 Player C2 Sport Entrada Cartao SD Micro', 2, 1, 130, 200, 'Macia', 13.99, 20.00, 99, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Bi Cama 0735 Branco Brilho Multimoveis Bebe Store', 3, 2, 200, 400, 'Confortavel', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Jogo de Mesa com 4 Cadeiras Tampo de Vidro Temperado Incolor', 3, 2, 200, 400, 'Confortavel', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Cesta Basica de Alimentos Popular', 3, 2, 200, 400, 'Confortavel', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Balas Alemas Fruit Candies', 3, 2, 200, 400, 'Confortavel', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Kit Brigadeiro Premium Festa Infantil 100 Unidades', 3, 2, 200, 400, 'Confortavel', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Tamarillo Tomate de Arvore Gigante Sementes Fruta para Mudas', 3, 2, 200, 400, 'Confortavel', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Frutos de Ora Pro Nobis 10 Frutos Frete Gratis', 3, 2, 200, 400, 'Confortavel', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Mudas Fruta do Milagre Variedade Gigante', 3, 2, 200, 400, 'Confortavel', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Goji Berry 1KG Fruto Desidratado Pronta Entrega', 3, 2, 200, 400, 'Confortavel', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Hibisco Desidratado Cha 500G', 3, 2, 200, 400, 'Confortavel', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Whisky Johnnie Walker Double Black 1000ML', 3, 2, 200, 400, 'Confortavel', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Vodka Absolut Unique 1L Ed. Limitada Raridade', 3, 2, 200, 400, 'Confortavel', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Espumante Cava Freixenet Carta Nevada 750ML', 3, 2, 200, 400, 'Confortavel', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Coca-Cola Vanilla Sabores Baunilha Caixa 12 Latas', 3, 2, 200, 400, 'Confortavel', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Refrigerante Crush Orange Importado 12 Latas', 3, 2, 200, 400, 'Confortavel', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Refrigerante Canada Dry Ginger Ale Caixa 12 Latas', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Ferro de Passar Roupa a Vapor com Caldeira Delonghi', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Lencol Elastico 2 Fronhas Quenn Malha-Penteada 100 Algodao', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Manta de Sofa Gigante Tipo Capa de Sofa Algodao 240X180M', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Divergente Insurgente Convergente Quatro 04 Livros', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Box-Supernatural Kit com 05 Livros', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Colecao 8 Livros Fabulas a Cigarra e a Formiga Lebre Raposa', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Tablet Positivo Duo ZX3020 Prata e Preto 2 em 1 Quad-Core 16GB', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Pen Drive Titan 8GB Preto Multilaser PD601', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('HD Externo Portatil Samsung M3 1TB USB 3.0', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Tablet Semp-Toshiba TA0703G 16GB 7 WI-FI 3G', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Multifuncional Colorida Wireless 2546 HP', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Fax Panasonic KX FT932BR com Bina Novo Garantia 1 Ano', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Telefone Sem Fio Philips D1201BBR Dect 60 Bina Preto', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Bateria Musical Infantil Transformers 100 Original Kids', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Mini Helicoptero V911 4 Canais com Gyro e Controle 24GHZ', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Tapete Infantil EVA Alfabeto Numeros Alfanumerico Bebe 40PCS', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Piano Teclado Musical Infantil Sons Eletrnico Frete Gratis', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('DVD Player H Buster HBD 6680 Tela 27 Toca CD USB MP3 Radio', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Caixa Trio 100 Selenium 2 Modulos Taramps Frete Gratis', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Capas de Courvin para Bancos Automotivos Frete Gratis', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Kit Caixa Trio Completa 7000W 2 12 4D 2T Modulo 4000W', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Modulo Amplificador Taramps TS 800 X4 800W RMS RCA Sedex', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Maleta de Ferramentas com 142 Pecas BR Tools', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Jogo de Ferramentas 110 Pecas Mayle', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Kit Jogo Ferramentas e Furadeira Maleta 110PCS Frete Gratis', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Camisa 3D Caveira Breakthough The Mountain no Brasil', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Camisetas Engracadas Dandas Filmes Serie Games Super Herois', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Camisa Social Slim Fit Importada 200 Novos Modelos', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Calca Jeans Preta Skinny Sarja Jeans', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Calca Combat Forhonor Top de Linha Ripstop Design Marines', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Kit com 3 Cinto em Gorgoro Cafetroy', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Adidas Springblade Drive 4 Original 20 Pronta Entrega', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Tenis Mizuno Prophecy 2 Original Frete Gratis Pronta Entrega', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Bota Masculina Sandro Moscoloni em Couro Worker Amarelo', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Sapato Social em Couro Verniz 100 Legitimo Frete Gratis', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Sapato Importado Feminino Glitter Pronta Entrega no Brasil', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Sapatenis em Couro Legitimo Sandro Moscoloni Street', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Relogio Invicta Pro Diver 6981 Ouro 18K', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Smartwatch U8 Relogio Inteligente Bluetooth Android Iphone', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Relogio Feminino com Estojo 26 Pulseiras 26 Aros Relogios', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Relogio de Pulso Vintage Feminino em Couro Brinde Exclusivo', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Pulseira Bracelete Masculina Tribal Couro 2 Unidades Frete Gratis', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Pulseira Masculina Bracelete Couro Legitimo Preto Aco Inox', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Pulseira Feminina Victoria Secrets Cristal Banhado Ouro 18K', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Caixa com 10 Resmas Papel Folha A4 75G Reciclado Chamex', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

INSERT INTO products (product_name, store_id, sub_category_id, quantity, sold, description, price, old_price, visited, status, created, modified)
VALUES ('Carimbos para Professoras Premium 20 Original', 3, 2, 200, 400, '', 30.30, 25.00, 111, 0, NOW(), NOW());

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

# 7 registros na tabela "features" ----------------------------------------------------

INSERT INTO features (feature_name, created, modified)
VALUES ('Altura', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

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
VALUES ('Largura', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

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

#  registros na tabela "medias" ------------------------------------------------------

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 1, 'http://localhost/PROJETOS/ShoppingResources/img/1/Samsung-Galaxy-A5-Duos-Branco-4G-Orange-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 1, 'http://localhost/PROJETOS/ShoppingResources/thumb/1/Samsung-Galaxy-A5-Duos-Branco-4G-Orange-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 1, 'http://localhost/PROJETOS/ShoppingResources/img/1/Samsung-Galaxy-A5-Duos-Branco-4G-Orange-2.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (1, 1, 'http://localhost/PROJETOS/ShoppingResources/img/1/Samsung-Galaxy-A5-Duos-Branco-4G-Orange-3.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (2, 2, 'http://localhost/PROJETOS/ShoppingResources/img/2/TV-LED-32-Smart-LiteUSB-HDMI-LE-3278i-Semp-Toshiba-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (3, 2, 'http://localhost/PROJETOS/ShoppingResources/thumb/2/TV-LED-32-Smart-LiteUSB-HDMI-LE-3278i-Semp-Toshiba-1.jpg', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

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
VALUES (, , 'http://localhost/PROJETOS/ShoppingResources/img/', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (, , 'http://localhost/PROJETOS/ShoppingResources/img/', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (, , 'http://localhost/PROJETOS/ShoppingResources/img/', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (, , 'http://localhost/PROJETOS/ShoppingResources/img/', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (, , 'http://localhost/PROJETOS/ShoppingResources/img/', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (, , 'http://localhost/PROJETOS/ShoppingResources/img/', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (, , 'http://localhost/PROJETOS/ShoppingResources/img/', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (, , 'http://localhost/PROJETOS/ShoppingResources/img/', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (, , 'http://localhost/PROJETOS/ShoppingResources/img/', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (, , 'http://localhost/PROJETOS/ShoppingResources/img/', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (, , 'http://localhost/PROJETOS/ShoppingResources/img/', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (, , 'http://localhost/PROJETOS/ShoppingResources/img/', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (, , 'http://localhost/PROJETOS/ShoppingResources/img/', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (, , 'http://localhost/PROJETOS/ShoppingResources/img/', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (, , 'http://localhost/PROJETOS/ShoppingResources/img/', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (, , 'http://localhost/PROJETOS/ShoppingResources/img/', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (, , 'http://localhost/PROJETOS/ShoppingResources/img/', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (, , 'http://localhost/PROJETOS/ShoppingResources/img/', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (, , 'http://localhost/PROJETOS/ShoppingResources/img/', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (, , 'http://localhost/PROJETOS/ShoppingResources/img/', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (, , 'http://localhost/PROJETOS/ShoppingResources/img/', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (, , 'http://localhost/PROJETOS/ShoppingResources/img/', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (, , 'http://localhost/PROJETOS/ShoppingResources/img/', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (, , 'http://localhost/PROJETOS/ShoppingResources/img/', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (, , 'http://localhost/PROJETOS/ShoppingResources/img/', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (, , 'http://localhost/PROJETOS/ShoppingResources/img/', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (, , 'http://localhost/PROJETOS/ShoppingResources/img/', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (, , 'http://localhost/PROJETOS/ShoppingResources/img/', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (, , 'http://localhost/PROJETOS/ShoppingResources/img/', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (, , 'http://localhost/PROJETOS/ShoppingResources/img/', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (, , 'http://localhost/PROJETOS/ShoppingResources/img/', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (, , 'http://localhost/PROJETOS/ShoppingResources/img/', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (, , 'http://localhost/PROJETOS/ShoppingResources/img/', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (, , 'http://localhost/PROJETOS/ShoppingResources/img/', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (, , 'http://localhost/PROJETOS/ShoppingResources/img/', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (, , 'http://localhost/PROJETOS/ShoppingResources/img/', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (, , 'http://localhost/PROJETOS/ShoppingResources/img/', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (, , 'http://localhost/PROJETOS/ShoppingResources/img/', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (, , 'http://localhost/PROJETOS/ShoppingResources/img/', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (, , 'http://localhost/PROJETOS/ShoppingResources/img/', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

INSERT INTO medias (media_type_id, product_id, path, created, modified)
VALUES (, , 'http://localhost/PROJETOS/ShoppingResources/img/', '2011-10-28 09:39:49', '2012-10-28 09:39:49');

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