SELECT AR.name as 'Artista', COUNT(SO.title) as 'Quantidade de músicas'
FROM albums AL INNER JOIN artists AR ON AL.artist_id = AR.id
INNER JOIN songs SO ON AL.id = SO.album_id
GROUP BY AR.name
ORDER BY `Quantidade de músicas` DESC,AR.name
LIMIT 3;
