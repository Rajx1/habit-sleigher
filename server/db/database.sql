CREATE TABLE user_table (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(255),
    email VARCHAR(255),
    usr_password VARCHAR(255)
);

CREATE TABLE habit (
    habit_id SERIAL PRIMARY KEY,
    habit VARCHAR(255),
    user_id INT,
    currStreak INTEGER DEFAULT 0,
    maxStreak INTEGER DEFAULT 0,
    currTime timestamp DEFAULT CURRENT_timestamp,
    currFreq INTEGER,
    frequency INTEGER,
    FOREIGN KEY(user_id)
        REFERENCES user_table(user_id)
        ON DELETE SET NULL
);

-- DROP TABLE IF EXISTS habit_counter;
CREATE TABLE habit_counter (
    id serial PRIMARY KEY,
    habit_id int references habit(habit_id) ON DELETE CASCADE ON UPDATE CASCADE,
    time_done timestamp DEFAULT CURRENT_timestamp
);


INSERT INTO user_table(username, email, usr_password)
    VALUES
        ('test', 'test@gmail.com', '$2a$10$bSQ6V2lYWaTS.KH3K81De.Yvaf2RoNcZcU3BcsZqsdVirBvs.EkzS'),
        ('test2', 'test2@gmail.com', '$2a$10$A/5VanepDSivGz2NEfDdmuxDrJ.i7cHBznfus7sCFT41eOO5X1DQq');


INSERT INTO habit (habit, user_id, currTime, currFreq, frequency) 
    VALUES 
        ('drink water', 1, current_timestamp - INTERVAL '2 day', 4, 4),
        ('go running', 1, current_timestamp - INTERVAL '3 day', 4, 4),
        ('have breakfast', 1, current_timestamp - INTERVAL '1 day', 1, 1),
        ('have breakfast!', 2, current_timestamp - INTERVAL '1 day', 1, 1);


INSERT INTO habit_counter(habit_id, time_done)
    VALUES
        (1, current_timestamp - INTERVAL '1 day'),
        (1, current_timestamp - INTERVAL '1 day'),
        (1, current_timestamp - INTERVAL '1 day'),
        (1, current_timestamp - INTERVAL '1 day'),

        (1, current_timestamp - INTERVAL '2 day'),
        (1, current_timestamp - INTERVAL '2 day'),
        (1, current_timestamp - INTERVAL '2 day'),
        (1, current_timestamp - INTERVAL '2 day'),



        (2, current_timestamp),
        (2, current_timestamp - INTERVAL '1 day'),
        (2, current_timestamp - INTERVAL '1 day'),
        (2, current_timestamp - INTERVAL '1 day'),
        (2, current_timestamp - INTERVAL '1 day'),

        (2, current_timestamp - INTERVAL '2 day'),
        (2, current_timestamp - INTERVAL '2 day'),
        (2, current_timestamp - INTERVAL '2 day'),

        (2, current_timestamp - INTERVAL '3 day'),
        (2, current_timestamp - INTERVAL '3 day'),
        (2, current_timestamp - INTERVAL '3 day'),
        (2, current_timestamp - INTERVAL '3 day'),



        (3, current_timestamp - INTERVAL '1 day'),



        (4, current_timestamp - INTERVAL '1 day');


