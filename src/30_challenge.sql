SELECT AR.name as 'Artista', COUNT(AF.user_id) as 'Total de seguidores'
FROM artists AR INNER JOIN artists_followers AF ON AR.id = AF.artist_id
GROUP BY AR.name
HAVING `Total de seguidores` < 5;