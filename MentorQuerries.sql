--querries suitable for mentor

--show all quests completed by students
SELECT count(quest_id) AS all_completed_quests
FROM students_details_quests;

--3 most popular quests
SELECT quests.name,
       sum((CASE WHEN quests IS NOT NULL THEN 1 ELSE 2 END)) AS count
FROM quests JOIN students_details_quests ON quests.id = students_details_quests.quest_id
GROUP BY quests.name ORDER BY count DESC LIMIT 3;

--top 5 students by quests
SELECT concat(users.last_name,' ' ,users.first_name) AS full_name,
       sum((CASE WHEN quest_id IS NOT NULL THEN 1 ELSE 2 END)) AS quest_count
FROM users JOIN students_details ON users.student_id = students_details.id JOIN students_details_quests ON students_details.id = students_details_quests.student_id
GROUP BY full_name ORDER BY quest_count DESC, full_name ASC LIMIT 5;

--students without completed quests
SELECT concat(users.last_name,' ' ,users.first_name) AS full_name
FROM users JOIN students_details ON users.student_id = students_details.id
LEFT JOIN students_details_quests ON students_details.id = students_details_quests.student_id
WHERE students_details_quests.quest_id IS NULL ORDER BY full_name ASC;

--3 most popular artifacts
SELECT artifacts.name,
       sum((CASE WHEN artifacts IS NOT NULL THEN 1 ELSE 2 END)) AS count
FROM artifacts JOIN students_details_artifacts ON artifacts.id = students_details_artifacts.artifact_id
GROUP BY artifacts.name ORDER BY count DESC LIMIT 3;

--top 5 students by artifacts
SELECT concat(users.last_name,' ' ,users.first_name) AS full_name,
       sum((CASE WHEN artifact_id IS NOT NULL THEN 1 ELSE 2 END)) AS artifact_count
FROM users JOIN students_details ON users.student_id = students_details.id JOIN students_details_artifacts ON students_details.id = students_details_artifacts.student_id
GROUP BY full_name ORDER BY artifact_count DESC, full_name ASC LIMIT 5;

--students without artifacts
SELECT concat(users.last_name,' ' ,users.first_name) AS full_name
FROM users JOIN students_details ON users.student_id = students_details.id
LEFT JOIN students_details_artifacts ON students_details.id = students_details_artifacts.student_id
WHERE students_details_artifacts.artifact_id IS NULL ORDER BY full_name ASC;
