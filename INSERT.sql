INSERT INTO genre(name)
VALUES('RAP'),
    ('Indi'),
    ('HIP-HOP'),
    ('Rock'),
    ('Jazz');


INSERT INTO music_artists(alias)
VALUES('KID CUDDI'),
    ('ASAP Rocky'),
    ('Red Hot Chilli Peppers'),
    ('Tupac'),
    ('Arctic Monkeys'),
    ('Jackie Paris'),
    ('Tyler, The Creator'),
    ('Imagine Dragons'),
    ('Tame Impala'),
    ('Black Eyed Peas');

INSERT INTO artists_genres(artist_id, genre_id)
VALUES(1,1),
    (2,1),
    (2,3),
    (3,4),
    (4,3),
    (4,1),
    (5,2),
    (5,4),
    (6,5),
    (7,1),
    (7,3),
    (8,4),
    (9,2),
    (10,3);


INSERT INTO albums(title, release_date)
VALUES('Testing','2018-05-25'),
    ('Man on the Moon: The End of Day','2009-09-15'),
    ('R U Still Down?','1997-11-25'),
    ('Californication','1999-06-08'),
    ('AM','2013-08-01'),
    ('Songs','1988-02-15'),
    ('Flower Boy','2017-07-21'),
    ('Night Visions','2012-09-04'),
    ('The Slow Rush','2020-02-14'),
    ('Elevation','2022-09-11');
    
INSERT INTO artists_album(artist_id, album_id)
VALUES(1,2),
    (2,1),
    (3,4),
    (4,3),
    (5,5),
    (6,6),
    (7,7),
    (8,8),
    (9,9),
    (10,10);

INSERT INTO tracks(name, duration, album_id)
VALUES('Tony Tone', 3.29, 1),
      ('Praise the Lord(Da shine)', 3.25, 1),
      ('Day N Night', 4.42, 2),
      ('Man on the Moon', 3.31, 2),
      ('Lie to kick it', 3.39, 3),
      ('Do for love', 4.42, 3),
      ('Porcelain', 2.44, 4),
      ('Otherside', 4.16, 4),
      ('R U Mine?', 3.21, 5),
      ('I want it all', 3.04, 5),
      ('Indiana', 2.13, 6),
      ('911/Mr. Lonely', 4.15, 7),
      ('November', 3.45, 7),
      ('Radioactive', 3.05, 8),
      ('Demons', 2.56, 8),
      ('Borderline', 3.58, 9),
      ('On track', 5.02, 9),
      ('L.O.V.E.', 3.58, 10),
      ('jUMP', 3.36, 10);

INSERT INTO collections(title, release_date)
VALUES('GYM','2020-06-13'),
    ('OldSchool','2015-12-02'),
    ('For ur soul','2021-04-23'),
    ('Summer Vibe','2020-05-13'),
    ('Night City Drive','2022-07-19'),
    ('Songs','2010-04-03'),
    ('Best Hits','2017-07-10'),
    ('My top 5','2023-05-24');
INSERT INTO tracks_collections(track_id, collection_id)
VALUES(1,5),
    (1,1),
    (2,8),
    (2,1),
    (2,6),
    (3,8),
    (3,5),
    (3,3),
    (3,7),
    (4,3),
    (4,6),
    (4,5),
    (4,4),
    (5,2),
    (5,1),
    (5,7),
    (6,2),
    (6,3),
    (7,2),
    (7,4),
    (7,7),
    (8,6),
    (9,3),
    (9,8),
    (9,5),
    (10,7),
    (10,1),
    (10,5),
    (11,2),
    (11,3),
    (11,7),
    (12,8),
    (12,7),
    (12,4),
    (12,3),
    (13,3),
    (13,6),
    (14,1),
    (14,5),
    (14,7),
    (14,6),  
    (15,3),
    (15,8),
    (15,7),
    (16,3),
    (16,4),
    (16,5),
    (17,3),
    (17,7),
    (18,1),
    (18,6),
    (18,4),
    (19,6),
    (19,1),
    (19,5);