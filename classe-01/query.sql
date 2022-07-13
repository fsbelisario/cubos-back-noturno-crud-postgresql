--1
CREATE DATABASE m03a04;

CREATE TABLE users (
	id serial,
	name varchar(60) NOT NULL,
	age smallint,
	email varchar(80) NOT NULL,
	pwd varchar(8) NOT NULL
);


--2
INSERT INTO users
(name, age, email, pwd)
VALUES
('Aretha Montgomery', 30, 'augue.id.ante@odioAliquam.com', 'a0B13O3L'),
('Camden H. Bartlett', 15, 'turpis.vitae.purus@risusDuisa.ca', 'p3P96F3Q'),
('Raja W. Coffey', 30, 'raja.feugiat@nonummy.com', 's5F51T7L'),
('Elton D. Olsen', 29, 'auctor@duiFuscediam.edu', 'k5X25B0R'),
('Shelley E. Frederick', 20, 'raja.feugiat@nonummy.com', 'u2D18F6E');


--3
UPDATE users
SET name = 'Raja W. Coffey Thomas'
WHERE email = 'raja.feugiat@nonummy.com';


--4
DELETE FROM users
WHERE id = 5;

ALTER TABLE users
ADD CONSTRAINT uniqueemail UNIQUE(email);


--5
INSERT INTO users
(name, age, email, pwd)
VALUES
('Jermaine G. Sellers', 16, 'ligula.Nullam@tortordictum.co.uk', 'o2P56U9U'),
('James D. Kennedy', 23, 'amet@Nulladignissim.com', 'q6B78V3V'),
('Amelia S. Harris', 29, 'nec.metus.facilisis@vitaealiquet.edu', 'l4S64Y3A'),
('Joel M. Hartman', 18, 'montes.nascetur@odiotristique.co.uk', 'c4Q27D7O'),
('Elmo K. Greer', 18, 'risus.Duis@eget.ca', 'e3P92I7R');


--6
ALTER TABLE users
ADD COLUMN active boolean DEFAULT TRUE;

--7
UPDATE users
SET active = FALSE
WHERE email = 'montes.nascetur@odiotristique.co.uk';


--8
UPDATE users
SET pwd = 'k9P31H1O'
WHERE email = 'risus.Duis@eget.ca';


--9
ALTER TABLE users
DROP COLUMN age,
ADD COLUMN birthdate date;


--10
UPDATE users
SET birthdate = '1991-09-29'
WHERE email = 'auctor@duiFuscediam.edu';

UPDATE users
SET birthdate = '1988-11-02'
WHERE email = 'nec.metus.facilisis@vitaealiquet.edu';


--11
DELETE FROM users
WHERE birthdate IS NULL;


--12
ALTER TABLE users
ALTER COLUMN birthdate
SET NOT NULL;


--13
INSERT INTO users
(name, email, pwd, birthdate)
VALUES
('Tate I. Dean', 'Nunc@etmagnis.edu', 'd3V25D6Y', '1989-05-01'),
('Arsenio K. Harmon', 'adipiscing.elit@turpis.com', 'm3T58S0C', '1985-10-23');