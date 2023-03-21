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
INSERT INTO user VALUES (0, "j_duong", "J Duong","jduong@gmail.com", "$2a$10$z/.XUYhZn988kWDeLq59COun6W.tisyTKtLY693nzcVhzok.08Kei", "2000-12-03", "Vietnam", 0,CURRENT_TIMESTAMP, "https://i.pravatar.cc/300?img=3", "admin");
INSERT INTO user VALUES (1, "admin", "Admin","fiverr_admin@jopmail.com", "$2a$10$z/.XUYhZn988kWDeLq59COun6W.tisyTKtLY693nzcVhzok.08Kei", "2000-12-03", "Vietnam", 1,CURRENT_TIMESTAMP, "http://sc04.alicdn.com/kf/Hc3e61591078043e09dba7808a6be5d21n.jpg", "admin");

CREATE TABLE job (
	id INT PRIMARY KEY AUTO_INCREMENT,
	user_id INT,
  	service_id INT,
  	name VARCHAR(255),
  	price INT,
  	thumb_url VARCHAR(3000),
  	long_description TEXT,
  	short_description TEXT,
  	rating INT,
  	FOREIGN KEY (user_id) REFERENCES user (id),
  	FOREIGN KEY (service_id) REFERENCES service (id));

INSERT INTO job VALUES (0, 1, 1, "Full Stack Web Development", 300, "https://stiffentechnologies.com/wp-content/uploads/2021/11/Web-Development.jpg", "\nHi There,\r\n\r\n\r\n\r\nHave You Been Looking for a Brand Logo with Complete Corporate Brand Identity?\r\n\r\n\r\n\r\nHi, I am Talha, a Passionate Professional Graphic Designer designing brand logos & brand Identity for many Years, I have successfully designed brand logos with the complete corporate brand identity for different brands around the world.\r\n\r\n\r\n\r\nI also would love to do demanded designs, Just leave your request, I will respond instantly.", "Plus - MOST SELLING!\r\nUS$65\r\n3 logo options + source file in Ai, EPS, SVG, PDF, and PSD\r\n\r\n2 Days Delivery\r\n5 Revisions\r\n3 concepts included\r\nLogo transparency\r\nVector file\r\nPrintable file\r\nSource file", 5);


