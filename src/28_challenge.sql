SELECT US.full_name as 'Pessoa usuária', COUNT(AF.artist_id) as 'Artistas que segue'
FROM users US INNER JOIN artists_followers AF ON US.id = AF.user_id
GROUP BY US.full_name
ORDER BY US.full_name;