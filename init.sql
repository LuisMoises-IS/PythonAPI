CREATE DATABASE IF NOT EXISTS my_collections;

USE my_collections;

CREATE TABLE IF NOT EXISTS my_movies (
    id INT AUTO_INCREMENT PRIMARY KEY,
    author VARCHAR(255) NOT NULL,
    description TEXT,
    release_date DATE
);

INSERT INTO my_movies (author, description, release_date) VALUES
('Christopher Nolan', 'A mind-bending thriller about dreams and reality.', '2010-07-16'),
('Steven Spielberg', 'A tale of adventure and friendship set in the prehistoric world.', '1993-06-11'),
('Quentin Tarantino', 'A nonlinear story of revenge and redemption.', '1994-10-14'),
('Martin Scorsese', 'A gripping crime drama about the Irish mob.', '2006-06-08'),
('James Cameron', 'A romantic epic set against the backdrop of a historic disaster.', '1997-12-19'),
('Peter Jackson', 'An epic fantasy adventure based on a classic novel.', '2001-12-19'),
('Ridley Scott', 'A gripping tale of survival on an alien planet.', '2015-10-02'),
('Hayao Miyazaki', 'A beautifully animated tale of magic and adventure.', '2001-07-20'),
('David Fincher', 'A psychological thriller about the nature of identity.', '1999-10-15'),
('Sofia Coppola', 'A reflective look at the life of a young woman in a foreign country.', '2003-10-03'),
('Danny Boyle', 'A gripping story of survival after a global catastrophe.', '2002-01-11'),
('Coen Brothers', 'A dark comedy about a kidnapping gone wrong.', '1996-03-08'),
('Wes Anderson', 'A quirky tale of family dynamics and adventure.', '2012-05-25'),
('Frank Darabont', 'A tale of hope and friendship set in a prison.', '1994-09-23'),
('J.J. Abrams', 'A modern reimagining of a classic space saga.', '2009-12-18'),
('Denis Villeneuve', 'A sci-fi epic that explores the nature of humanity.', '2016-11-11'),
('Luc Besson', 'A high-octane action film about a skilled assassin.', '2014-05-21'),
('James Wan', 'A chilling horror story that tests the boundaries of belief.', '2013-09-13'),
('George Miller', 'A post-apocalyptic action film with stunning visuals.', '2015-05-15'),
('Nora Ephron', 'A romantic comedy about love and food.', '2009-08-07'),
('Richard Linklater', 'A unique coming-of-age story told over 12 years.', '2014-07-11'),
('David Yates', 'A fantasy adventure in a magical world.', '2016-11-18'),
('Gus Van Sant', 'A poignant look at friendship and youth.', '1997-05-30'),
('Catherine Hardwicke', 'A modern fairy tale with a twist.', '2008-03-21'),
('M. Night Shyamalan', 'A psychological thriller with a supernatural twist.', '2002-07-21'),
('Greta Gerwig', 'A coming-of-age story about young women in a changing world.', '2017-08-11'),
('Ron Howard', 'An inspiring true story about a mathematician.', '2016-11-11'),
('Lana Wachowski', 'A sci-fi film that challenges perceptions of reality.', '1999-03-31'),
('Zack Snyder', 'An action-packed superhero film with moral dilemmas.', '2016-03-25'),
('Patty Jenkins', 'A powerful tale of heroism and strength.', '2017-06-02'),
('Paul Thomas Anderson', 'An intricate tale of ambition and family dynamics.', '2007-12-26'),
('Barry Jenkins', 'A poignant exploration of identity and connection.', '2016-10-21'),
('Alejandro Iñárritu', 'An immersive experience that explores survival and redemption.', '2015-12-25');
