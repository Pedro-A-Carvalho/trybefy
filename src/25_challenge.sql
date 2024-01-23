SELECT AL.title as 'Álbum', COUNT(HI.id) as 'Quantidade de músicas reproduzidas'
FROM albums AL INNER JOIN songs SO ON AL.id = SO.album_id
INNER JOIN history_play_songs HI ON SO.id = HI.song_id
GROUP BY AL.title
ORDER BY `Quantidade de músicas reproduzidas` DESC,AL.title
LIMIT 5;