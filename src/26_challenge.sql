SELECT AR.name as 'Artista', COUNT(HI.id) as 'Quantidade de músicas reproduzidas'
FROM artists AR INNER JOIN albums AL ON AR.id = AL.artist_id
INNER JOIN songs SO ON AL.id = SO.album_id
INNER JOIN history_play_songs HI ON SO.id = HI.song_id
GROUP BY AR.name
HAVING `Quantidade de músicas reproduzidas` > 10
ORDER BY AR.name;