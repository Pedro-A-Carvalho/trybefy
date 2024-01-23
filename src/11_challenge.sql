SELECT AL.title as 'Album', AL.release_year as 'Ano de lançamento', AR.name as 'Artista'
FROM albums AL INNER JOIN artists AR ON AL.artist_id = AR.id
WHERE AL.title LIKE '%you%'
ORDER BY AL.release_year; 