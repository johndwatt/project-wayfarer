/* 
to seed this data, run in terminal:
    psql wayfarer -f db/create_posts.sql
 */

INSERT INTO main_app_city(name, country, picture)
  VALUES
    ('Los Angeles', 'USA', 'url');

INSERT INTO main_app_post(title, content, city_id, created_at, user_id)
  VALUES
    ('LA Trip! Woohoo!', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque nesciunt assumenda ducimus architecto eaque modi porro odio recusandae fugit. Nesciunt adipisci repudiandae delectus impedit. Ab corporis natus inventore doloremque repellendus!', '1', '2021-05-07 18:57:42.517205-07', '1');

INSERT INTO main_app_post(title, content, city_id, created_at, user_id)
  VALUES
    ('Spending time with Fam', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque nesciunt assumenda ducimus architecto eaque modi porro odio recusandae fugit. Nesciunt adipisci repudiandae delectus impedit. Ab corporis natus inventore doloremque repellendus!', '1', '2021-04-08 18:57:42.517205-07', '1');

INSERT INTO main_app_post(title, content, city_id, created_at, user_id)
  VALUES
    ('Park Picnic', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque nesciunt assumenda ducimus architecto eaque modi porro odio recusandae fugit. Nesciunt adipisci repudiandae delectus impedit. Ab corporis natus inventore doloremque repellendus!', '1', '2020-08-03 18:57:42.517205-07', '1');

INSERT INTO main_app_post(title, content, city_id, created_at, user_id)
  VALUES
    ('I walk here every day...', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque nesciunt assumenda ducimus architecto eaque modi porro odio recusandae fugit. Nesciunt adipisci repudiandae delectus impedit. Ab corporis natus inventore doloremque repellendus!', '1', '2019-06-17 18:57:42.517205-07', '1');

INSERT INTO main_app_post(title, content, city_id, created_at, user_id)
  VALUES
    ('Met my love here 2 years ago today', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque nesciunt assumenda ducimus architecto eaque modi porro odio recusandae fugit. Nesciunt adipisci repudiandae delectus impedit. Ab corporis natus inventore doloremque repellendus!', '1', '2021-02-28 18:57:42.517205-07', '1');