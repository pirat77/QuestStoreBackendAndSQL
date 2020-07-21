INSERT INTO categories (id, name) VALUES (1, 'Body modifications');
INSERT INTO categories (id, name) VALUES (2, 'Implants');
INSERT INTO categories (id, name) VALUES (3, 'Software');
INSERT INTO categories (id, name) VALUES (4, 'Neuralinks');
INSERT INTO categories (id, name) VALUES (5, 'Datasets');
INSERT INTO categories (id, name) VALUES (6, 'Riddles');
INSERT INTO categories (id, name) VALUES (7, 'Tasks');
INSERT INTO categories (id, name) VALUES (8, 'Challanges');
INSERT INTO categories (id, name) VALUES (9, 'Optimalizations');
INSERT INTO categories (id, name) VALUES (10, 'Info hunting');

INSERT INTO artifacts (id, name, description, value, category_id) 
VALUES ('1', 'Bionic Arm', 'Improves your engineering skills', '1000', '1');
INSERT INTO artifacts (id, name, description, value, category_id) 
VALUES ('2', 'Egzoskeleton', 'Protects fragile carbon based body', '2000', '1');
INSERT INTO artifacts (id, name, description, value, category_id) 
VALUES ('3', 'Bionic Eye', 'Allows you to appreciate micro and macrocosm alike', '3000', '2');
INSERT INTO artifacts (id, name, description, value, category_id) 
VALUES ('4', 'Adrenaline pump', 'Makes life an entertaining challange', '2500', '2');
INSERT INTO artifacts (id, name, description, value, category_id) 
VALUES ('5', 'Selfreplicating data probe', 'Makes argus an amateour in comprasion', '4000', '3');
INSERT INTO artifacts (id, name, description, value, category_id) 
VALUES ('6', 'Proactive defence toolbox', 'Makes payoff matrix preferential to its owner', '5000', '3');
INSERT INTO artifacts (id, name, description, value, category_id) 
VALUES ('7', 'Full immersion VR siute', 'Real word?', '7000', '4');
INSERT INTO artifacts (id, name, description, value, category_id) 
VALUES ('8', 'Brain computer interface', 'You never look back at normies afterward', '12000', '4');
INSERT INTO artifacts (id, name, description, value, category_id) 
VALUES ('9', 'Full encyclopedia of self replicating proteins', 'Everything you need to know about carbon based computers', '20000', '5');
INSERT INTO artifacts (id, name, description, value, category_id) 
VALUES ('10', 'Hitchhikers guide to galaxy', 'Real adventure just begins', '25000', '5');

INSERT INTO quests (id, name, description, value, category_id) 
VALUES ('1', 'Solve P vs NP problem', 'No more questions asked', '1000000', '6');
INSERT INTO quests (id, name, description, value, category_id) 
VALUES ('2', 'Find treat satisfying everyone', 'This can will make you hero of all time', '1000000000', '6');
INSERT INTO quests (id, name, description, value, category_id) 
VALUES ('3', 'Build working warehouse menagement system', 'You can do it', '100000', '7');
INSERT INTO quests (id, name, description, value, category_id) 
VALUES ('4', 'Build analitic model for lazy academic', 'Then they will get some prize for your hard work', '10000', '7');
INSERT INTO quests (id, name, description, value, category_id) 
VALUES ('5', 'Capture the flag of data camp', 'For sure they know nothing abous security', '5000', '8');
INSERT INTO quests (id, name, description, value, category_id) 
VALUES ('6', 'Make it secure, simple and efficient', 'You have only two weeks', '2500', '8');
INSERT INTO quests (id, name, description, value, category_id) 
VALUES ('7', 'Make code delivered by your colegues scalable', 'Keep their incredible api working', '3500', '9');
INSERT INTO quests (id, name, description, value, category_id) 
VALUES ('8', 'Implement automation of your 9 to job 5 tasks', 'allowing you to take care of your pet project', '100000', '9');
INSERT INTO quests (id, name, description, value, category_id) 
VALUES ('9', 'Find exact position of holy grail', 'Can be done with all that data', '1000000', '10');
INSERT INTO quests (id, name, description, value, category_id) 
VALUES ('10', 'Extract information about positions of sthalth bombers from weather data', 'And then you get a job', '10000000', '10');