CREATE TABLE decomposition (
	id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20) DEFAULT '', 
    difficult TINYINT DEFAULT 1 );
INSERT INTO decomposition (name, difficult) VALUES ('HTML', 1);
INSERT INTO decomposition (name, difficult) VALUES ('Bootstrap', 1);
INSERT INTO decomposition (name, difficult) VALUES ('GitHub', 2);
INSERT INTO decomposition (name, difficult) VALUES ('Perl', 2);
INSERT INTO decomposition (name, difficult) VALUES ('DB + MySQL', 3);
INSERT INTO decomposition (name, difficult) VALUES ('Perl Module', 3);
 

