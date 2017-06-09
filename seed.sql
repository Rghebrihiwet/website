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