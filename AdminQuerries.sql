--querries suitable for admin

--users count
SELECT user_types.name,
       sum((case when user_type_id IS NOT NULL THEN 1 ELSE 2 END)) AS count
FROM users JOIN user_types ON users.user_type_id = user_types.id
GROUP BY user_types.name ORDER BY count ASC;

--users percentage
SELECT name, count(user_type_id) AS counter,
       count(user_type_id) / (SELECT cast(count(user_type_id) AS FLOAT) FROM users) * 100 AS percentage
FROM users JOIN user_types ut on users.user_type_id = ut.id
GROUP BY name
ORDER BY counter ASC;

--users inactive and active count
SELECT user_types.name,
       sum((CASE WHEN user_type_id IS NOT NULL THEN 1 ELSE 2 END)) AS all_users,
       count(CASE WHEN is_active THEN TRUE END) AS active_users,
       count(CASE WHEN is_active IS FALSE THEN FALSE END) AS inactive_users
FROM users JOIN user_types ON users.user_type_id = user_types.id
GROUP BY user_types.name;

--percentage of bought and never bought artifacts
SELECT
	CASE
    	WHEN	sda.artifact_id IS NOT NULL
		THEN	'Has been bought at least once'
		ELSE	'Never bought' 
  	END as Has_been_bought,
 count(a.id) as counter,
 count(a.id) / (SELECT cast(count(id) AS FLOAT) FROM artifacts) * 100 as percentrage
FROM artifacts as a LEFT JOIN (SELECT DISTINCT sda.artifact_id FROM students_details_artifacts as sda) as sda on a.id = sda.artifact_id
GROUP BY Has_been_bought
ORDER BY counter ASC;
