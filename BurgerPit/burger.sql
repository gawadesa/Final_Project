create database burgerpit;

USE burgerpit;



-- create category table tbl_category
CREATE TABLE IF NOT EXISTS `burgerpit`.`category` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `category_name` VARCHAR(255) NULL DEFAULT NULL);

-- create book table tbl_book
CREATE TABLE IF NOT EXISTS `burgerpit`.`burger` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `sku` VARCHAR(255) DEFAULT NULL,
  `name` VARCHAR(255) DEFAULT NULL,
  `description` VARCHAR(255) DEFAULT NULL,
  `unit_price` DECIMAL(13,2) DEFAULT NULL,
  `image_url` VARCHAR(255) DEFAULT NULL,
  `active` BIT DEFAULT 1,
  `units_in_stock` INT(11) DEFAULT NULL,
   `date_created` DATETIME DEFAULT NULL,
  `last_updated` DATETIME DEFAULT NULL,
  `category_id` BIGINT(20) NOT NULL,
  FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
);

-- insert sample data to category table
INSERT INTO category(category_name) VALUES ('Chicken burger');
INSERT INTO category(category_name) VALUES ('Egg burger');


-- insert sample data to book table
INSERT INTO burger
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'basic-burger', 
    'Basic chicken Burger', 
    'The Basic Burger is simply made up of salt, pepper, and lean ground chuck. Enhance the burger with your favorite toppings and toasted buns.',
    'assets/images/Chicken burger/basic-burger.jpg',
    1,
    100,
    80.00,
    1, 
    NOW()
);

INSERT INTO burger
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'beetroot-burger', 
    'Beetroot chicken Burger', 
    ' Beetroot is an obvious choice for a vegan burger because it resembles meat when grated and cooked.',
    'assets/images/Chicken burger/beetroot-burger.jpg',
    1,
    100,
    110.00,
    1, 
    NOW()
);

INSERT INTO burger
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'cheese-burger', 
    'Cheese chicken Burger', 
    ' A mildly spiced Chicken Burger with a burst of cheddar cheese. All our burger patties have regulated fat content to ensure optimum juiciness in every bite.',
    'assets/images/Chicken burger/cheese-burger.jpg',
    1,
    100,
    110.00,
    1, 
    NOW()
);



select * from burger;

INSERT INTO burger
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'caramalize-burger', 
    'Charamalize Egg Burger', 
    '  These caramelized onion smash burgers are loaded with flavor, smothered with cheese and caramelized onions and topped with garlic herb ...',
    'assets/images/Egg burger/caramalize-burger.jpg',
    1,
    100,
    110.00,
    2, 
    NOW()
);

INSERT INTO burger
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'juisy-burger', 
    'Juisy Egg Burger', 
     
'Your new favorite Burger Recipe! There is nothing like a juicy cheeseburger with fresh crisp toppings on a toasted bun, paired with sweet ...',
    'assets/images/Egg burger/juisy-burger.jpg',
    1,
    100,
    130.00,
    2, 
    NOW()
);


