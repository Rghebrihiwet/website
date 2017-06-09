DROP TABLE IF EXISTS review; 

CREATE TABLE review (

	game_id SERIAL PRIMARY KEY,
  	price VARCHAR(255),
  	title VARCHAR(50),
  	age_require TEXT, 
  	release_date DATE,
  	description VARCHAR(255),
  	developer VARCHAR(50)
);

INSERT INTO review ( game_id, price, title, age_require, release_date, description, developer) VALUES ('Review 1' , 'Body text 1');
INSERT INTO review ( game_id, price, title, age_require, release_date, description, developer) VALUES ('Review 2' , 'Body text 2');
INSERT INTO review ( game_id, price, title, age_require, release_date, description, developer) VALUES ('Review 3' , 'Body text 3');
INSERT INTO review ( game_id, price, title, age_require, release_date, description, developer) VALUES ('Review 4' , 'Body text 4');
INSERT INTO review ( game_id, price, title, age_require, release_date, description, developer) VALUES ('Review 5' , 'Body text 5');
INSERT INTO review ( game_id, price, title, age_require, release_date, description, developer) VALUES ('Review 6' , 'Body text 6');
INSERT INTO review ( game_id, price, title, age_require, release_date, description, developer) VALUES ('Review 7' , 'Body text 7');