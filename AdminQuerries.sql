--querries suitable for admin









SELECT name, count(user_type_id) AS counter,
       count(user_type_id) / (SELECT cast(count(user_type_id) AS FLOAT) FROM users) * 100 AS percentage
FROM users JOIN user_types ut on users.user_type_id = ut.id
GROUP BY name
ORDER BY counter ASC;