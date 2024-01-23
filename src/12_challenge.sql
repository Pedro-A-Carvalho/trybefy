SELECT AR.name as 'Artista', COUNT(AL.artist_id) as 'Quantidade de álbuns'
FROM albums AL INNER JOIN artists AR ON AL.artist_id = AR.id
GROUP BY AR.name
ORDER BY `Quantidade de álbuns` DESC,AR.name;
