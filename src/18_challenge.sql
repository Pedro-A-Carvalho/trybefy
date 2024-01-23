SELECT title as 'Título', duration_in_seconds as 'Duração' FROM songs 
WHERE duration_in_seconds < 240
ORDER BY duration_in_seconds;