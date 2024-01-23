SELECT S.title as 'Título', S.duration_in_seconds as 'Duração', A.title as 'Álbum'
FROM songs S INNER JOIN albums A ON S.album_id = A.id
WHERE S.duration_in_seconds BETWEEN 300 and 480
ORDER BY S.duration_in_seconds; 