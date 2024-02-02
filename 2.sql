SELECT TrackName, Duration
FROM Tracks
WHERE Duration = (SELECT MAX(Duration) FROM Tracks);

SELECT TrackName
FROM Tracks
WHERE Duration >= 3.5 * 60;

-- Названия сборников, вышедших в период с 2001 по 2020 год включительно.
SELECT CompilationName
FROM Compilations
WHERE ReleaseYear BETWEEN 2001 AND 2020;

SELECT ArtistName
FROM Artists
WHERE CHAR_LENGTH(ArtistName) - CHAR_LENGTH(REPLACE(ArtistName, ' ', '')) = 0;

-- Название треков, которые содержат слово «hey» или «my».
SELECT TrackName
FROM Tracks
WHERE LOWER(TrackName) LIKE '%hey%' OR LOWER(TrackName) LIKE '%my%';








SELECT g.GenreName, COUNT(ag.ArtistID) AS ArtistCount
FROM Genres g
LEFT JOIN ArtistGenres ag ON g.GenreID = ag.GenreID
LEFT JOIN Artists a ON ag.ArtistID = a.ArtistID
GROUP BY g.GenreName;

SELECT COUNT(t.TrackID) AS TrackCount
FROM Tracks t
LEFT JOIN Albums a ON t.AlbumID = a.AlbumID
WHERE a.ReleaseYear BETWEEN 2001 AND 2020;

SELECT a.AlbumName, AVG(t.Duration) AS AvgDuration
FROM Albums a
LEFT JOIN Tracks t ON a.AlbumID = t.AlbumID
GROUP BY a.AlbumName;

SELECT a.ArtistName
FROM Artists a
LEFT JOIN AlbumArtists aa ON a.ArtistID = aa.ArtistID
LEFT JOIN Albums al ON aa.AlbumID = al.AlbumID
WHERE al.ReleaseYear IS NULL OR al.ReleaseYear != 2020;

SELECT c.CompilationName
FROM Compilations c
LEFT JOIN CompilationTracks ct ON c.CompilationID = ct.CompilationID
LEFT JOIN Tracks t ON ct.TrackID = t.TrackID
LEFT JOIN Albums a ON t.AlbumID = a.AlbumID
LEFT JOIN AlbumArtists aa ON a.AlbumID = aa.AlbumID
LEFT JOIN Artists ar ON aa.ArtistID = ar.ArtistID
WHERE ar.ArtistName = 'ArtistName';
