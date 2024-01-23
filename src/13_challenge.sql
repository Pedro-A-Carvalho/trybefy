SELECT AR.name as 'Artista'
FROM albums AL INNER JOIN artists AR ON AL.artist_id = AR.id
GROUP BY AR.name
HAVING COUNT(AL.artist_id) > 2
ORDER BY AR.name;