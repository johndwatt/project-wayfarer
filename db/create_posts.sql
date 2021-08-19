/* 
to seed this data, run in terminal:
    psql wayfarer -f db/create_posts.sql
 */

INSERT INTO main_app_city(name, country, picture)
  VALUES
    ('city 1', 'country', 'url');

INSERT INTO main_app_post(title, content, city_id, created_at, user_id)
  VALUES
    ('post 1', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque nesciunt assumenda ducimus architecto eaque modi porro odio recusandae fugit. Nesciunt adipisci repudiandae delectus impedit. Ab corporis natus inventore doloremque repellendus!', '1', '2021-05-07 18:57:42.517205-07', '1');

INSERT INTO main_app_post(title, content, city_id, created_at, user_id)
  VALUES
    ('post 2', '2Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque nesciunt assumenda ducimus architecto eaque modi porro odio recusandae fugit. Nesciunt adipisci repudiandae delectus impedit. Ab corporis natus inventore doloremque repellendus!', '1', '2021-05-07 18:57:42.517205-07', '1');

INSERT INTO main_app_post(title, content, city_id, created_at, user_id)
  VALUES
    ('post 3', '3Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque nesciunt assumenda ducimus architecto eaque modi porro odio recusandae fugit. Nesciunt adipisci repudiandae delectus impedit. Ab corporis natus inventore doloremque repellendus!', '1', '2021-05-07 18:57:42.517205-07', '1');

INSERT INTO main_app_post(title, content, city_id, created_at, user_id)
  VALUES
    ('post 4', '4Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque nesciunt assumenda ducimus architecto eaque modi porro odio recusandae fugit. Nesciunt adipisci repudiandae delectus impedit. Ab corporis natus inventore doloremque repellendus!', '1', '2021-05-07 18:57:42.517205-07', '1');