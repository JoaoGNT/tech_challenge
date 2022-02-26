Create table tb_product(
id int Primary Key not null,
name varchar(50),
price dec(12,2)

);
Create table tb_category(
id int Primary Key not null,
name varchar(50)
);

Create table tb_product_category(
id int Primary Key not null,
productId int not null,
categoryId int not null,
CONSTRAINT fk_prod_prodcat
	FOREIGN KEY (productId)
    REFERENCES tb_product(id)
    ON DELETE CASCADE
	ON UPDATE CASCADE,
	FOREIGN KEY (categoryId)
    REFERENCES tb_category(id)
    ON DELETE CASCADE
	ON UPDATE CASCADE

)