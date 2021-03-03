insert into routes (route_name) values
('Frontend'),
('Backend'),
('iOS Engineering'),
('Android Development'),
('Cross Mobile Development'),
('Database Management Systems'),
('API Design')
;

insert into languages (language_name) values
('JavaScript'),
('HTML'),
('CSS'),
('Go'),
('Java'),
('SQL'),
('Swift'),
('PHP'),
('C++'),
('Python'),
('Dart'),
('GraphQl'),
('TypeScript')
;

insert into stacks (stack_name, route_id) values
('React', 1),
('Cocoa Touch', 3),
('Express', 2),
('Django', 2),
('Flutter', 5),
('Apollo Server', 7),
('Postgres', 6),
('Nodejs', 2),
('Jetpack Compose', 4)
;

insert into stack_schemas (stack_id, language_id) values
(1, 1),
(2, 7),
(3, 1),
(4, 10),
(5, 11),
(6, 12),
(7, 6),
(8, 1),
(9, 5),
(1, 13)
;

insert into specializations(specialization_name) values
('Frontend Developer'),
('Backend Developer'),
('Fullstack Developer'),
('Mobile Developer'),
('Data Architect'),
('DevOps Architect')
;

insert into users (user_username, user_password, user_fullname, language_id, specialization_id) values
('abdulatifxon', crypt('abdulatifxon1', gen_salt('bf')), 'Abdulatifxon Anvarxonov', 1, 3),
('akbarjon', crypt('akbarjon1', gen_salt('bf')), 'Akbarjon Tojiyev', 1, 3),
('farruh', crypt('farruh1', gen_salt('bf')), 'Farruh Abbosov', 1, 3),
('ilhom', crypt('ilhom1', gen_salt('bf')), 'Ilhom Shamidinov', 13, 3),
;


insert into users (user_username, user_password, user_fullname, language_id, specialization_id) values
('malika', crypt('malika1', gen_salt('bf')), 'Malika Baxtiyorova', 1, 3),
('usmon', crypt('usmon1', gen_salt('bf')), 'Usmon Ma''sudjonov', 1, 3),
('muhammadsiddiq', crypt('muhammadsiddiq1', gen_salt('bf')), 'Muhammadsiddiq Quvandiqov', 9, 2),
('rasul', crypt('rasul1', gen_salt('bf')), 'Rasul Ismoilov', 8, 4),
('shuhrat', crypt('shuhrat1', gen_salt('bf')), 'Shuhrat Qobulov', 4, 3),
('umar', crypt('umar1', gen_salt('bf')), 'Umar Hamidulloh', 1, 2),
('sardor', crypt('sardor1', gen_salt('bf')), 'Sardor Jo''raqulov', 9, 5),
('ulugbek', crypt('ulugbek1', gen_salt('bf')), 'Ulug''bek Valiev', 1, 2),
('ali', crypt('ali1', gen_salt('bf')), 'Ali Abdullayev', 1, 2),
('math', crypt('math', gen_salt('bf')), 'Muhammadxon Najimov', 4, 2)
;