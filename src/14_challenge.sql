SELECT AR.name as 'Artista', GROUP_CONCAT(AL.title) as 'Álbuns'
FROM albums AL INNER JOIN artists AR ON AL.artist_id = AR.id
GROUP BY AR.name
ORDER BY AR.name;
