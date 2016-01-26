INSERT INTO users(username, first_name, last_name, email, password, role, active, image, background)
    VALUES ('admin', 'Admin', 'Admin', 'admin@gmail.com', 'admin', 'ROLE_ADMIN', TRUE, NULL, NULL);
INSERT INTO users(username, first_name, last_name, email, password, role, active, image, background)
    VALUES ('recruiter', 'Recruiter', 'Recruiter', 'recruiter@gmail.com', 'recruiter', 'ROLE_RECRUITER', TRUE, NULL, NULL);
INSERT INTO users(username, first_name, last_name, email, password, role, active, image, background)
    VALUES ('manager', 'Manager', 'Manager', 'manager@gmail.com', 'manager', 'ROLE_MANAGER', TRUE, NULL, NULL);
INSERT INTO users(username, first_name, last_name, email, password, role, active, image, background)
    VALUES ('reviewer', 'Reviewer', 'Reviewer', 'reviewer@gmail.com', 'reviewer', 'ROLE_REVIEWER', TRUE, NULL, NULL);
INSERT INTO users(username, first_name, last_name, email, password, role, active, image, background)
    VALUES ('interviewer', 'Interviewer', 'Interviewer', 'interviewer@gmail.com', 'interviewer', 'ROLE_INTERVIEWER', TRUE, NULL, NULL);


INSERT INTO participants(participant_id, first_name, last_name, email, sent, returned, taken, active, image)
    VALUES (1, 'Ivan', 'Karamov', 'adsdasd@gmail.com', '2015-12-25', '2015-12-26', 'done', TRUE, NULL) ;
INSERT INTO participants(participant_id, first_name, last_name, email, sent, returned, taken, active, image)
    VALUES (2, 'Vasya', 'Bimov', 'fsdfdd@gmail.com', '2015-12-04', '2015-12-05', 'done', TRUE, NULL );
INSERT INTO participants(participant_id, first_name, last_name, email, sent, returned, taken, active, image)
    VALUES (3, 'Misha', 'Hoshiy', 'aggggsd@gmail.com', '2015-12-09', '2015-12-10', 'inProcess', TRUE, NULL) ;
INSERT INTO participants(participant_id, first_name, last_name, email, sent, returned, taken, active, image)
    VALUES (4, 'Ihor', 'Wol', 'allsdasd@gmail.com', '2015-12-06', '2015-12-07', 'inProcess', TRUE, NULL);
INSERT INTO participants(participant_id, first_name, last_name, email, sent, returned, taken, active, image)
    VALUES (5, 'Nazar', 'Kalyn', 'kalyn_nazar@mail.ru', '2016-01-14', '2016-01-15', 'done', TRUE, NULL) ;
INSERT INTO participants(participant_id, first_name, last_name, email, sent, returned, taken, active, image)
    VALUES (6, 'John', 'Cena', 'john_c@gmail.com', '2016-01-14', '2016-01-15', 'done', TRUE, NULL) ;
INSERT INTO participants(participant_id, first_name, last_name, email, sent, returned, taken, active, image)
    VALUES (7, 'Vitalik', 'Dudaev', 'macho_men@gmail.com', '2016-01-14', '2016-01-15', 'inProcess', TRUE, NULL) ;
INSERT INTO participants(participant_id, first_name, last_name, email, sent, returned, taken, active, image)
    VALUES (8, 'Igor', 'Gnup', 'cugan_gop@gmail.com', '2016-01-14', '2016-01-15', 'inProcess', TRUE, NULL) ;
INSERT INTO participants(participant_id, first_name, last_name, email, sent, returned, taken, active, image)
    VALUES (9, 'Misha', 'Barhan', 'Mashann_bb@mail.ru', '2016-01-14', '2016-01-15', 'done', TRUE, NULL) ;
INSERT INTO participants(participant_id, first_name, last_name, email, sent, returned, taken, active, image)
    VALUES (10, 'Denus', 'Perepeluca', 'denus_budlo@gmail.com', '2016-01-14', '2016-01-15', 'done', TRUE, NULL) ;
INSERT INTO participants(participant_id, first_name, last_name, email, sent, returned, taken, active, image)
    VALUES (11, 'Denus', 'Kaznodiy', 'iDen@mail.ru', '2016-01-14', '2016-01-15', 'done', TRUE, NULL) ;

INSERT INTO users_participants(users_userId, participants_participantId)
    VALUES(2, 1);
INSERT INTO users_participants(users_userId, participants_participantId)
    VALUES(2, 3);
INSERT INTO users_participants(users_userId, participants_participantId)
    VALUES(2, 8);
-- INSERT INTO user_participant(user_set_username, participant_set_participantId)
--     VALUES('recruiter', 11);
-- INSERT INTO user_participant(user_set_username, participant_set_participantId)
--     VALUES('andrusyakA', 5);
-- INSERT INTO user_participant(user_set_username, participant_set_participantId)
--     VALUES('andrusyakA', 6);
-- INSERT INTO user_participant(user_set_username, participant_set_participantId)
--     VALUES('andrusyakA', 9);
-- INSERT INTO user_participant(user_set_username, participant_set_participantId)
--     VALUES('MulaDmytro', 2);
-- INSERT INTO user_participant(user_set_username, participant_set_participantId)
--     VALUES('MulaDmytro', 4);
-- INSERT INTO user_participant(user_set_username, participant_set_participantId)
--     VALUES('MulaDmytro', 7);
-- INSERT INTO user_participant(user_set_username, participant_set_participantId)
--     VALUES('MulaDmytro', 8);