CREATE DATABASE db_store;
-- Selecionar o banco --
USE db_store;

CREATE TABLE tb_category (
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL ,
    description VARCHAR(100) NOT NULL
);

CREATE TABLE tb_product (
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR (30) NOT NULL ,
    description VARCHAR (100) NOT NULL ,
    photo VARCHAR(255) NOT NULL ,
    value FLOAT (10,2) NOT NULL ,
    category_id INT(11) NOT NULL,
    quantity INT(5) NOT NULL,
    created_at DATETIME NOT NULL
);
DROP TABLE tb_product;

DESC tb_product;

INSERT INTO tb_category (name, description) VALUES
('Informatica','Produtos de Informatica e acessórios para computador'),
('Escritório','Canetas, Cadernos, Folhas, etc'),
('Eletrônicos','TVs, Som portátil, Caixas de Som, etc');

SELECT * FROM tb_category;

SHOW TABLES ;

SET @@global.sql_mode= 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';

INSERT INTO tb_product (name, description, photo, value, category_id, quantity, created_at) VALUES
('PC Desktop','Computador para uso pessoal','https://docs.microsoft.com/pt-br/windows-hardware/design/images/desktop.png',3700,1,8,'2022-06-08'),
('Computador gamer','Computador para jogos','https://a-static.mlcdn.com.br/1500x1500/pc-gamer-completo-a4-3-9ghz-8gb-fury-500gb-monitor-19-imperiums/lojaoficialimperiums/16650/4f93ca7f9ebe7c52870b45ca56b334a1.jpg',6500,1,5,'2022-06-08'),
('Notebook','Computador portátil','https://a-static.mlcdn.com.br/280x210/notebook-samsung-book-intel-core-i5-8gb-256gb-ssd-156-full-hd-windows-11/magazineluiza/234099300/1dae9242b5dd61a5736f155930b95ebf.jpg',4500,1,7,'2022-06-08'),
('Tablet','Computador de mão','https://cdn.pocket-lint.com/r/s/1200x630/assets/images/149561-tablets-review-samsung-galaxy-tab-s5e-review-image1-3unpifevlj.jpg',1200,1,5,'2022-06-08'),
('All in One','Computador compacto','https://images.kabum.com.br/produtos/fotos/113238/all-in-one-lg-intel-celeron-n4100-4gb-500gb-21-5-windows-10-home-branco-22v280-l-by31p1_1591012877_original.jpg',3800,1,10,'2022-06-08'),
('Disco rígido HD','HDs para computadores','https://images.kabum.com.br/produtos/fotos/63735/63735_1433187476_g.jpg',250,1,5,'2022-06-08'),
('Memória RAM','Memória para computadores e notebooks','https://s2.glbimg.com/K_qkDk_em2NfvIJJpcrUZcUEFvI=/0x0:695x465/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_08fbf48bc0524877943fe86e43087e7a/internal_photos/bs/2021/1/S/cAJvoDRFuzchoytX5ZUw/2016-07-19-memoria-ram-1.jpg',189.9,1,4,'2022-06-08'),
('WebCam','Camera para uso em computadores','https://m.media-amazon.com/images/I/71iNwni9TsL._AC_SY450_.jpg',320.8,1,3,'2022-06-08'),
('Teclado','Teclado de computador','https://m.media-amazon.com/images/I/61awqwlmk3L._AC_SX679_.jpg',125.9,1,10,'2022-06-08'),
('Mouse','Mouse para computador','https://m.media-amazon.com/images/I/51WxLmtDyXL._AC_SX679_.jpg',79.9,1,10,'2022-06-08'),
('Papel','Resma de Papel A4','https://img.kalunga.com.br/fotosdeprodutos/476106d.jpg',16.9,2,20,'2022-06-08'),
('Post-its','Adesivos para recados','https://m.media-amazon.com/images/I/61+3vM5reJL._AC_SL1000_.jpg',24.9,2,30,'2022-06-08'),
('Caneta','Canetas de cores variadas','https://img.kalunga.com.br/fotosdeprodutos/174915z_2.jpg',5.99,2,25,'2022-06-08'),
('Lápis','Lápis para desenho','https://d2r9epyceweg5n.cloudfront.net/stores/768/676/products/kit-lapis-esfuminho-extensor-01-cb955f747bf3597e7715707614548666-1024-1024.jpg',3.99,2,20,'2022-06-08'),
('Caderno','Caderno de Vários tamanhos','https://images.tcdn.com.br/img/img_prod/639335/caderno_universitario_honey_bee_1m_80_folhas_322997_tilibra_13719_1_20201215230930.jpg',24.99,2,15,'2022-06-08'),
('TV','Smart TV','https://m.media-amazon.com/images/I/718tounJl2S._AC_SY450_.jpg',4990.5,3,6,'2022-06-08'),
('Som portátil','Som','https://uploads.metropoles.com/wp-content/uploads/2020/07/20140927/Caixa-de-som-bluetooth-600x400.jpg',1499,3,5,'2022-06-08'),
('Celular','SmartPhone','https://m.media-amazon.com/images/I/71iO2R+CLjL._AC_SX679_.jpg',2399,3,8,'2022-06-08'),
('Relógios Digitais','SmartWatch','https://m.media-amazon.com/images/I/61hmDN6921L._AC_SX569_.jpg',499,3,5,'2022-06-08'),
('Video Game','Diversos Modelos de Vídeo Game','https://m.media-amazon.com/images/I/81Z1xBs6GoL._AC_SX679_.jpg',4799,3,4,'2022-06-08');

SELECT * FROM tb_product;
