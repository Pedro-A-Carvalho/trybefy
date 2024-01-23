SELECT US.full_name as 'Nome', COUNT(HI.song_id) as 'Quantidade de músicas reproduzidas'
FROM users US INNER JOIN history_play_songs HI ON US.id = HI.user_id
GROUP BY US.full_name
ORDER BY `Quantidade de músicas reproduzidas` DESC,US.full_name;