/* 
to seed this data, run in terminal:
    psql wayfarer -f db/create_posts.sql
 */

/* CITIES */
INSERT INTO main_app_city(name, country, icon, picture)
  VALUES
    ('San Francisco', 'United States', 'https://source.unsplash.com/LOhZNOJc3Ro', 'https://images.unsplash.com/photo-1624236028842-88acfd4e5287?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1411&q=80');

INSERT INTO main_app_city(name, country, icon, picture)
  VALUES
    ('London', 'United Kingdom', 'https://source.unsplash.com/iP8ElEhqHeY', 'https://source.unsplash.com/ljRnNh6VJDs');

INSERT INTO main_app_city(name, country, icon, picture)
  VALUES
    ('Gibraltar', 'United Kingdom', 'https://source.unsplash.com/2Dq9hnPPHeg', 'https://source.unsplash.com/T5ePvSRL5Hg');

INSERT INTO main_app_city(name, country, icon, picture)
  VALUES
    ('Madrid', 'Spain', 'https://source.unsplash.com/WBGjg0DsO_g', 'https://source.unsplash.com/aYZr10nm0tY');

INSERT INTO main_app_city(name, country, icon, picture)
  VALUES
    ('Paris', 'France', 'https://source.unsplash.com/QAwciFlS1g4', 'https://source.unsplash.com/5-cY9rWzqRo');

INSERT INTO main_app_city(name, country, icon, picture)
  VALUES
    ('Bejing', 'China', 'https://source.unsplash.com/ygOfAMw8_4A', 'https://source.unsplash.com/3j4-YJ4L5Ig');

INSERT INTO main_app_city(name, country, icon, picture)
  VALUES
    ('Osaka', 'Japan', 'https://source.unsplash.com/WaHPhFveWLk', 'https://source.unsplash.com/1kHZ9IaMqXo');

INSERT INTO main_app_city(name, country, icon, picture)
  VALUES
    ('Abu Simbel', 'Egypt', 'https://source.unsplash.com/GNdp2Q4VZjw', 'https://source.unsplash.com/WrIUj6IdA8k');

INSERT INTO main_app_city(name, country, icon, picture)
  VALUES
    ('Rio de Janeiro', 'Brazil', 'https://source.unsplash.com/7F65HDP0-E0', 'https://source.unsplash.com/W3dfnYQ0QpY');

INSERT INTO main_app_city(name, country, icon, picture)
  VALUES
    ('Machu Picchu', 'Peru', 'https://source.unsplash.com/4hMET7vYTAQ', 'https://source.unsplash.com/vUl9dXccCks');

/* POSTS for different cities */
/* San Francisco */
INSERT INTO main_app_post(title, content, city_id, created_at, user_id)
  VALUES
    ('SF Trip! Woohoo!', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque nesciunt assumenda ducimus architecto eaque modi porro odio recusandae fugit. Nesciunt adipisci repudiandae delectus impedit. Ab corporis natus inventore doloremque repellendus!', '1', '2021-05-07 13:12:42.517205-07', '1');

INSERT INTO main_app_post(title, content, city_id, created_at, user_id)
  VALUES
    ('Spending time with Fam', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque nesciunt assumenda ducimus architecto eaque modi porro odio recusandae fugit.', '1', '2021-04-08 11:52:42.517205-07', '2');

INSERT INTO main_app_post(title, content, city_id, created_at, user_id)
  VALUES
    ('Park Picnic', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque nesciunt assumenda ducimus architecto eaque modi porro odio recusandae fugit. Nesciunt adipisci repudiandae delectus impedit. Ab corporis natus inventore doloremque repellendus! Ab corporis natus inventore doloremque repellendus! Lorem ipsum dolor sit amet consectetur adipisicing elit.', '1', '2020-08-03 10:13:42.517205-07', '3');

INSERT INTO main_app_post(title, content, city_id, created_at, user_id)
  VALUES
    ('I walk here every day...', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque nesciunt assumenda ducimus architecto eaque modi porro odio recusandae fugit. Nesciunt adipisci repudiandae delectus impedit. Ab corporis natus inventore doloremque repellendus!', '1', '2019-06-17 13:24:42.517205-07', '2');

INSERT INTO main_app_post(title, content, city_id, created_at, user_id)
  VALUES
    ('Met my love here 2 years ago today', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque nesciunt assumenda ducimus architecto eaque modi porro odio recusandae fugit. Nesciunt adipisci repudiandae delectus impedit. Ab corporis natus inventore doloremque repellendus! Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque nesciunt assumenda ducimus architecto eaque modi porro odio recusandae fugit. Nesciunt adipisci repudiandae delectus impedit. Ab corporis natus inventore doloremque repellendus!', '1', '2021-02-28 12:57:42.517205-07', '3');

/* London */
INSERT INTO main_app_post(title, content, city_id, created_at, user_id)
  VALUES
    ('London Trip! So far, so fun!', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque nesciunt assumenda ducimus architecto eaque modi porro odio recusandae fugit. Nesciunt adipisci repudiandae delectus impedit. Ab corporis natus inventore doloremque repellendus!', '2', '2021-05-07 13:12:42.517205-07', '3');

INSERT INTO main_app_post(title, content, city_id, created_at, user_id)
  VALUES
    ('London`s parks are better than Nottingham`s', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque nesciunt assumenda ducimus architecto eaque modi porro odio recusandae fugit. Nesciunt adipisci repudiandae delectus impedit. Ab corporis natus inventore doloremque repellendus!', '2', '2021-04-08 11:52:42.517205-07', '1');

INSERT INTO main_app_post(title, content, city_id, created_at, user_id)
  VALUES
    ('A bloody good time, mate', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque nesciunt assumenda ducimus architecto eaque modi porro odio recusandae fugit. Nesciunt adipisci repudiandae delectus impedit. Ab corporis natus inventore doloremque repellendus!Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque nesciunt assumenda ducimus architecto eaque modi porro odio recusandae fugit. Nesciunt adipisci repudiandae delectus impedit. Ab corporis natus inventore doloremque repellendus!', '2', '2020-08-03 10:13:42.517205-07', '3');

INSERT INTO main_app_post(title, content, city_id, created_at, user_id)
  VALUES
    ('I wish these kids would get off thier phones and enjoy the greenery...', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque nesciunt assumenda ducimus architecto eaque modi porro odio recusandae fugit. Nesciunt adipisci repudiandae delectus impedit. Ab corporis natus inventore doloremque repellendus!', '2', '2019-06-17 13:24:42.517205-07', '2');

INSERT INTO main_app_post(title, content, city_id, created_at, user_id)
  VALUES
    ('Afternoon stroll in Green park!', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque nesciunt assumenda ducimus architecto eaque modi porro odio recusandae fugit. Nesciunt adipisci repudiandae delectus impedit. Ab corporis natus inventore doloremque repellendus!', '2', '2021-02-28 12:57:42.517205-07', '3');

/* Gibraltar */
INSERT INTO main_app_post(title, content, city_id, created_at, user_id)
  VALUES
    ('The castle is cool, but the park is AMAZING', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque nesciunt assumenda ducimus architecto eaque modi porro odio recusandae fugit. Nesciunt adipisci repudiandae delectus impedit. Ab corporis natus inventore doloremque repellendus! Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque nesciunt assumenda ducimus architecto eaque modi porro odio recusandae fugit. Nesciunt adipisci repudiandae delectus impedit. Ab corporis natus inventore doloremque repellendus!', '3', '2021-05-07 13:12:42.517205-07', '2');

INSERT INTO main_app_post(title, content, city_id, created_at, user_id)
  VALUES
    ('Family trip to Gibralteeer', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque nesciunt assumenda ducimus architecto eaque modi porro odio recusandae fugit.', '3', '2021-04-08 11:52:42.517205-07', '2');

INSERT INTO main_app_post(title, content, city_id, created_at, user_id)
  VALUES
    ('Came for the gambling, stayed for the scenery', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque nesciunt assumenda ducimus architecto eaque modi porro odio recusandae fugit. Nesciunt adipisci repudiandae delectus impedit. Ab corporis natus inventore doloremque repellendus! Lorem ipsum dolor sit amet consectetur adipisicing elit. ', '3', '2020-08-03 10:13:42.517205-07', '3');

INSERT INTO main_app_post(title, content, city_id, created_at, user_id)
  VALUES
    ('This park is constantly crowded with tourists! I am SICK of it!', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque nesciunt assumenda ducimus architecto eaque modi porro odio recusandae fugit. Nesciunt adipisci repudiandae delectus impedit. Ab corporis natus inventore doloremque repellendus!', '3', '2019-06-17 13:24:42.517205-07', '2');

INSERT INTO main_app_post(title, content, city_id, created_at, user_id)
  VALUES
    ('Namaste! Park yoga is best yoga...', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque nesciunt assumenda ducimus architecto eaque modi porro odio recusandae fugit. Nesciunt adipisci repudiandae delectus impedit. Ab corporis natus inventore doloremque repellendus! Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque nesciunt assumenda ducimus architecto eaque modi porro odio recusandae fugit. Nesciunt adipisci repudiandae delectus impedit. Ab corporis natus inventore doloremque repellendus!', '3', '2021-02-28 12:57:42.517205-07', '1');