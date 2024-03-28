CREATE TABLE IF NOT EXISTS reviews (
    review_id BIGSERIAL PRIMARY KEY NOT NULL,
    user_id INTEGER REFERENCES user_db(user_id) ON DELETE CASCADE NOT NULL,
    song_id INTEGER REFERENCES song(song_id) ON DELETE CASCADE NOT NULL,
    review_text TEXT,
    rating INTEGER NOT NULL,
    review_date TIMESTAMP NOT NULL
);