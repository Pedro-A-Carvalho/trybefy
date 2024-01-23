SELECT AL.title as 'Álbum', SUM(SO.duration_in_seconds) as 'Duração'
FROM albums AL INNER JOIN songs SO ON AL.id = SO.album_id
GROUP BY AL.title
ORDER BY `Duração` DESC;