
 CREATE TABLE IF NOT EXISTS authors(
     author_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
     name VARCHAR(100) NOT NULL,
     nationality VARCHAR(3)

 );
CREATE TABLE IF NOT EXISTS books(
    book_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    author_id INT UNSIGNED,
    title VARCHAR(100) NOT NULL,
    year INT UNSIGNED NOT NULL DEFAULT 1900,
    language VARCHAR(2) NOT NULL DEFAULT 'es' COMMENT 'ISO 639-1 Language',
    cover_url VARCHAR(500),
    price DOUBLE NOT NULL DEFAULT 10.0,
    sellable TINYINT DEFAULT 1,
    copies INT NOT NULL DEFAULT 1,
    description TEXT
);


CREATE TABLE IF NOT EXISTS clients (
    client_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT; 
    "name" VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOt Null UNIQUE,
    birthdate DATETIME,
    gender ENUM("M","F","ND") NOT NULL,
    active TINYNT (1) NOT NULL DEFAULT 1, 
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP

);

CREATE TABLE IF NOT EXISTS operations(
	operation_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    book_id 		 INTEGER UNSIGNED,
    client_id		 INTEGER UNSIGNED,
    ´type´			 ENUM('borrowed','returned','sold') NOT NULL,
    created_at 	 TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_at	 TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
						 ON UPDATE CURRENT_TIMESTAMP,
	finshed			 TINYINT(1) NOT NULL
);
