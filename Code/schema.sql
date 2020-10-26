DROP TABLE IF EXISTS card_holder;

CREATE TABLE card_holder(
	id INT NOT NULL,
	name VARCHAR(255),
	PRIMARY KEY (id)
);

DROP TABLE IF EXISTS credit_card;

CREATE TABLE credit_card(
	card VARCHAR(20),
	id_card_holder INT,
	PRIMARY KEY (card),
	FOREIGN KEY id_card_holder REFERENCES card_holder(id)
);

DROP TABLE IF EXISTS transaction;

CREATE TABLE transaction(
	id INT PRIMARY KEY,
	date timestamp,
	amount FLOAT,
	card VARCHAR(20),
	id_merchant INT,
	PRIMARY KEY (id),
	FOREIGN KEY card REFERENCES credit_card(card),
	FOREIGN KEY id_merchant REFERENCES merchant(id)
);

DROP TABLE IF EXISTS merchant_category;

CREATE TABLE merchant_category(
	Cardid INT,
	name VARCHAR(255),
	PRIMARY KEY (Cardid)
);

DROP TABLE IF EXISTS merchant;

CREATE TABLE merchant(
	id INT,
	name VARCHAR(255),
	id_merchant_category INT,
	PRIMARY KEY (id),
	FOREIGN KEY id_merchant_category REFERENCES merchant_category(Cardid)
);

