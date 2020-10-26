DROP TABLE IF EXISTS card_holder;

CREATE TABLE card_holder(
	id INT PRIMARY KEY NOT NULL,
	name VARCHAR(255)
);

DROP TABLE IF EXISTS credit_card;

CREATE TABLE credit_card(
	card VARCHAR(20) PRIMARY KEY,
	id_card_holder INT
);

DROP TABLE IF EXISTS transaction;

CREATE TABLE transaction(
	id INT PRIMARY KEY,
	date timestamp,
	amount FLOAT,
	card VARCHAR(20),
	id_merchant INT
);

DROP TABLE IF EXISTS merchant_category;

CREATE TABLE merchant_category(
	Cardid INT PRIMARY KEY,
	name VARCHAR(255)
);

DROP TABLE IF EXISTS merchant;

CREATE TABLE merchant(
	id INT PRIMARY KEY,
	name VARCHAR(255),
	id_merchant_category INT
);

