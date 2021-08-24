/* 
to seed this data, run in terminal:
    psql wayfarer -f db/create_posts.sql
 */

/* CITIES */
INSERT INTO main_app_city(name, country, picture)
  VALUES
    ('San Francisco', 'United States', 'https://source.unsplash.com/LOhZNOJc3Ro');

INSERT INTO main_app_city(name, country, picture)
  VALUES
    ('London', 'United Kingdom', 'https://source.unsplash.com/iP8ElEhqHeY');

INSERT INTO main_app_city(name, country, picture)
  VALUES
    ('Gibraltar', 'United Kingdom', 'https://source.unsplash.com/2Dq9hnPPHeg');

INSERT INTO main_app_city(name, country, picture)
  VALUES
    ('Madrid', 'Spain', 'https://source.unsplash.com/WBGjg0DsO_g');

INSERT INTO main_app_city(name, country, picture)
  VALUES
    ('Paris', 'France', 'https://source.unsplash.com/QAwciFlS1g4');

INSERT INTO main_app_city(name, country, picture)
  VALUES
    ('Bejing', 'China', 'https://source.unsplash.com/ygOfAMw8_4A');

INSERT INTO main_app_city(name, country, picture)
  VALUES
    ('Osaka', 'Japan', 'https://source.unsplash.com/WaHPhFveWLk');

INSERT INTO main_app_city(name, country, picture)
  VALUES
    ('Abu Simbel', 'Egypt', 'https://source.unsplash.com/WaHPhFveWLk');

INSERT INTO main_app_city(name, country, picture)
  VALUES
    ('Rio de Janeiro', 'Brazil', 'https://source.unsplash.com/7F65HDP0-E0');

INSERT INTO main_app_city(name, country, picture)
  VALUES
    ('Machu Picchu', 'Peru', 'https://source.unsplash.com/4hMET7vYTAQ');

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