CREATE TABLE reviews (
  id BIGSERIAL NOT NULL PRIMARY KEY,
  restaurant_id BIGINT NOT NULL REFERENCES restaurants(id),
  name VARCHAR(50) NOT NULL,
  review TEXT NOT NULL,
  rating INT NOT NULL check(rating >=0 and rating <=5)
);

INSERT INTO reviews (restaurant_id, name, review, rating) VALUES (1, 'Alex', 'Get the burritos, they amazing', 5);