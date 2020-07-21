INSERT INTO teams (id, name) VALUES (1, 'SpaceBowlers');
INSERT INTO teams (id, name) VALUES (2, 'Modraszki');
INSERT INTO teams (id, name) VALUES (3, 'Trefnisie');
INSERT INTO teams (id, name) VALUES (4, 'Latawce');
INSERT INTO teams (id, name) VALUES (5, 'Harpagany');

INSERT INTO user_types(id, name) VALUES (1, 'admin');
INSERT INTO user_types(id, name) VALUES (2, 'mentor');
INSERT INTO user_types(id, name) VALUES (3, 'student');

INSERT INTO students_details (id, wallet, total_money, team_id)
VALUES ('1', '500', '800', '1');
INSERT INTO students_details (id, wallet, total_money, team_id)
VALUES ('2', '700', '900', '1');
INSERT INTO students_details (id, wallet, total_money, team_id)
VALUES ('3', '800', '1000', '1');
INSERT INTO students_details (id, wallet, total_money, team_id)
VALUES ('4', '600', '600', '2');
INSERT INTO students_details (id, wallet, total_money, team_id)
VALUES ('5', '700', '700', '2');
INSERT INTO students_details (id, wallet, total_money, team_id)
VALUES ('6', '800', '800', '2');
INSERT INTO students_details (id, wallet, total_money, team_id)
VALUES ('7', '900', '900', '3');
INSERT INTO students_details (id, wallet, total_money, team_id)
VALUES ('8', '1000', '1000', '3');
INSERT INTO students_details (id, wallet, total_money, team_id)
VALUES ('9', '1000', '1000', '3');
INSERT INTO students_details (id, wallet, total_money, team_id)
VALUES ('10', '2000', '2000', '3');
INSERT INTO students_details (id, wallet, total_money, team_id)
VALUES ('11', '4000', '4000', '4');
INSERT INTO students_details (id, wallet, total_money, team_id)
VALUES ('12', '5000', '5000', '4');
INSERT INTO students_details (id, wallet, total_money, team_id)
VALUES ('13', '6000', '6000', '5');
INSERT INTO students_details (id, wallet, total_money, team_id)
VALUES ('14', '10000', '10000', '5');
INSERT INTO students_details (id, wallet, total_money, team_id)
VALUES ('15', '20000', '20000', '5');

INSERT INTO users (id, login, password, first_name, last_name, is_active, user_type_id, student_id) 
VALUES ('1', 'jasio', 'jasio', 'jan', 'mikos', 'true', '3', '1');
INSERT INTO users (id, login, password, first_name, last_name, is_active, user_type_id, student_id) 
VALUES ('2', 'dominik', 'dominik', 'dominik', 'wojcik', 'true', '3', '2');
INSERT INTO users (id, login, password, first_name, last_name, is_active, user_type_id, student_id) 
VALUES ('3', 'maciek', 'maciek', 'maciej', 'kaczmarz', 'true', '3', '3');
INSERT INTO users (id, login, password, first_name, last_name, is_active, user_type_id, student_id) 
VALUES ('4', 'adrian', 'adrian', 'adrian', 'widlak', 'true', '2', null);
INSERT INTO users (id, login, password, first_name, last_name, is_active, user_type_id, student_id) 
VALUES ('5', 'dominique', 'dominik', 'dominik', 'starzyk', 'true', '2', null);
INSERT INTO users (id, login, password, first_name, last_name, is_active, user_type_id, student_id) 
VALUES ('6', 'adam', 'adam', 'adam', 'romanowski', 'true', '2', null);
INSERT INTO users (id, login, password, first_name, last_name, is_active, user_type_id, student_id) 
VALUES ('7', 'wojtek', 'wojtek', 'wojtek', 'makielka', 'true', '2', null);
INSERT INTO users (id, login, password, first_name, last_name, is_active, user_type_id, student_id) 
VALUES ('8', 'marcin', 'marcin', 'marcin', 'iwo', 'true', '1', null);
INSERT INTO users (id, login, password, first_name, last_name, is_active, user_type_id, student_id) 
VALUES ('9', 'kasia', 'kasia', 'kasia', 'P', 'false', '3', '4');
INSERT INTO users (id, login, password, first_name, last_name, is_active, user_type_id, student_id) 
VALUES ('10', 'magda', 'magda', 'magda', 'G', 'false', '3', '5');
INSERT INTO users (id, login, password, first_name, last_name, is_active, user_type_id, student_id) 
VALUES ('11', 'lidka', 'lidka', 'lidka', 'L', 'false', '3' ,'6');
INSERT INTO users (id, login, password, first_name, last_name, is_active, user_type_id, student_id) 
VALUES ('12', 'kalina', 'kalina', 'kalina', 'T', 'false', '3', '7');
INSERT INTO users (id, login, password, first_name, last_name, is_active, user_type_id, student_id) 
VALUES ('13', 'kuba', 'kuba', 'kuba', 'S', 'true', '3', '8');
INSERT INTO users (id, login, password, first_name, last_name, is_active, user_type_id, student_id) 
VALUES ('14', 'staszek', 'staszek', 'staszek', 'B', 'true', '3', '9');
INSERT INTO users (id, login, password, first_name, last_name, is_active, user_type_id, student_id) 
VALUES ('15', 'kazio', 'kazio', 'kazimierz', 'P', 'true', '3', '10');
INSERT INTO users (id, login, password, first_name, last_name, is_active, user_type_id, student_id) 
VALUES ('16', 'juzek', 'juezek', 'jozef', 'S', 'true', '3', '11');
INSERT INTO users (id, login, password, first_name, last_name, is_active, user_type_id, student_id) 
VALUES ('17', 'milosz', 'milosz', 'miloslaw', 'B', 'true', '3', '12');
INSERT INTO users (id, login, password, first_name, last_name, is_active, user_type_id, student_id) 
VALUES ('18', 'aleksander', 'aleksander', 'aleksander', 'J', 'true', '3', '13');
INSERT INTO users (id, login, password, first_name, last_name, is_active, user_type_id, student_id) 
VALUES ('19', 'krzysztof', 'krzysztof', 'krzysztof', 'M', 'true', '3', '14');
INSERT INTO users (id, login, password, first_name, last_name, is_active, user_type_id, student_id) 
VALUES ('20', 'michas', 'michas', 'michal', 'S', 'true', '3', '15');