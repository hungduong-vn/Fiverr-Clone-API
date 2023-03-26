CREATE TABLE user (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(255),
  display_name VARCHAR(255),
	email VARCHAR(255),
  	password VARCHAR(255),
	birthday DATE,
	nationality VARCHAR(255),
  gender BOOLEAN,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  	avatar VARCHAR(3000),
  	role VARCHAR(255),
	CONSTRAINT UC_User UNIQUE (email, name));
INSERT INTO user VALUES (0, "j_duong", "J Duong","jduong@gmail.com", "$2a$10$ynlcAoleL1yQjznQNZevdeZ3aPel.T44gDJtsC9U7Hd4iPR/mZEh6", "2000-12-03", "Vietnam", 0, CURRENT_TIMESTAMP, "https://i.pravatar.cc/300?img=3", "admin");
INSERT INTO user VALUES (0, "admin_fiverr", "Admin","admin_fiverr@jopmail.com", "$2a$10$w5ytAPEOv5KEzYSzqXBo1ei1FFthwk2/P0IKn5MjIfKeZC5gZMEW6", "2006-01-05", "United States", 0, CURRENT_TIMESTAMP, "http://sc04.alicdn.com/kf/Hc3e61591078043e09dba7808a6be5d21n.jpg", "admin");


