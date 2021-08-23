/* 
to seed this data, run in terminal:
    psql wayfarer -f db/create_posts.sql
 */

INSERT INTO main_app_city(name, country, picture)
  VALUES
    ('San Francisco', 'United States', 'https://images.unsplash.com/photo-1558150503-0fdcce137289?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=658&q=80');

INSERT INTO main_app_post(title, content, city_id, created_at, user_id)
  VALUES
    ('SF Trip! Woohoo!', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque nesciunt assumenda ducimus architecto eaque modi porro odio recusandae fugit. Nesciunt adipisci repudiandae delectus impedit. Ab corporis natus inventore doloremque repellendus!', '1', '2021-05-07 13:12:42.517205-07', '1');

INSERT INTO main_app_post(title, content, city_id, created_at, user_id)
  VALUES
    ('Spending time with Fam', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque nesciunt assumenda ducimus architecto eaque modi porro odio recusandae fugit. Nesciunt adipisci repudiandae delectus impedit. Ab corporis natus inventore doloremque repellendus!', '1', '2021-04-08 11:52:42.517205-07', '2');

INSERT INTO main_app_post(title, content, city_id, created_at, user_id)
  VALUES
    ('Park Picnic', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque nesciunt assumenda ducimus architecto eaque modi porro odio recusandae fugit. Nesciunt adipisci repudiandae delectus impedit. Ab corporis natus inventore doloremque repellendus!', '1', '2020-08-03 10:13:42.517205-07', '3');

INSERT INTO main_app_post(title, content, city_id, created_at, user_id)
  VALUES
    ('I walk here every day...', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque nesciunt assumenda ducimus architecto eaque modi porro odio recusandae fugit. Nesciunt adipisci repudiandae delectus impedit. Ab corporis natus inventore doloremque repellendus!', '1', '2019-06-17 13:24:42.517205-07', '2');

INSERT INTO main_app_post(title, content, city_id, created_at, user_id)
  VALUES
    ('Met my love here 2 years ago today', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque nesciunt assumenda ducimus architecto eaque modi porro odio recusandae fugit. Nesciunt adipisci repudiandae delectus impedit. Ab corporis natus inventore doloremque repellendus!', '1', '2021-02-28 12:57:42.517205-07', '3');