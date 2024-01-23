SELECT AR.name as 'Artista', AL.title as 'Álbum', SO.title as 'Música'
FROM albums AL INNER JOIN artists AR ON AL.artist_id = AR.id
INNER JOIN songs SO ON AL.id = SO.album_id
WHERE NOT AR.id = 3
ORDER BY AR.name, AL.title, SO.title;