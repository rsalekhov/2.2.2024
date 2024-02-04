INSERT INTO Genres (GenreID, GenreName) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Alternative');

INSERT INTO Artists (ArtistID, ArtistName) VALUES
(1, 'The_Beatles'),
(2, 'Nirvana'),
(3, 'Bjork'),
(4, 'Deftones');

INSERT INTO ArtistGenres (ArtistID, GenreID) VALUES
(1, 1), -- The_Beatles - Rock
(2, 1), -- Nirvana - Rock
(3, 2), -- Bjork - Pop
(4, 3); -- Deftones - Alternative

INSERT INTO Albums (AlbumID, AlbumName, ReleaseYear) VALUES
(1, 'Revolver', 1966),
(2, 'In_utero', 1993),
(3, 'Debut', 1993),
(4, 'White_pony', 2000);

INSERT INTO AlbumArtists (AlbumID, ArtistID) VALUES
(1, 1), -- Revolver - The_Beatles
(2, 2), -- In_utero - Nirvana
(3, 3), -- Debut - Bjork
(4, 4); -- White_pony - Deftones

-- Добавление треков
INSERT INTO Tracks (TrackID, TrackName, Duration, AlbumID) VALUES
(1, 'Hey_jude', 300, 1),
(2, 'Strawberry_fields', 270, 1),
(3, 'Dumb', 180, 2),
(4, 'Human_behaviour', 240, 3),
(5, 'my own', 200, 4),
(6, 'own my', 220, 4),
(7, 'my', 180, 4),
(8, 'oh my god', 240, 4),
(9, 'myself', 210, 4),
(10, 'by myself', 190, 4),
(11, 'bemy self', 200, 4),
(12, 'myself by', 220, 4),
(13, 'by myself by', 250, 4),
(14, 'beemy', 170, 4),
(15, 'premyne', 230, 4),
(16, 'hey', 190, 4),
(17, 'hey there', 210, 4),
(18, 'say hey', 170, 4),
(19, 'oh hey there', 200, 4),
(20, 'hey ho', 220, 4);


INSERT INTO Compilations (CompilationID, CompilationName, ReleaseYear) VALUES
(1, 'Anthology', 1995),
(2, '1', 2000),
(3, 'Nirvana_2002', 2002),
(4, 'Greatest_hits', 2002);

INSERT INTO CompilationTracks (CompilationID, TrackID) VALUES
(1, 1), -- Anthology - Hey_jude
(2, 2), -- 1 - Strawberry_fields
(3, 3), -- Nirvana_2002 - Dumb
(4, 4); -- NGreatest_hits - Human_behaviour
