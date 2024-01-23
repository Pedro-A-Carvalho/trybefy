SELECT P.name as 'Plano', COUNT(U.plan_id) as 'Quantidade de usuários' 
FROM users U INNER JOIN plans P ON U.plan_id = P.id 
GROUP BY P.name 
ORDER BY P.name;