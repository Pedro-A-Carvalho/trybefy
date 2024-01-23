SELECT AR.name as 'Artista'
FROM artists AR INNER JOIN artists_followers AF ON AR.id = AF.artist_id
GROUP BY AR.name
ORDER BY COUNT(AF.user_id) DESC, AR.name
LIMIT 1;s
