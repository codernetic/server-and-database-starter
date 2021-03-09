create DATABASE attendance;

create EXTENSION 'pg_crypto';

create table admins(
    admin_id serial NOT NULL,
    first_name VARCHAR(32) NOT NULL,
    last_name VARCHAR(32) NOT NULL,
    admin_password VARCHAR(72) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE
);

create table courses(
    course_id SERIAL NOT NULL,
    course_name VARCHAR(32) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE
);

create table teachers(
    teacher_id SERIAL NOT NULL,
    first_name VARCHAR(32) NOT NULL,
    last_name VARCHAR(32) NOT NULL,
    teacher_password VARCHAR(72) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE
);

create table groups(
    group_id SERIAL NOT NULL,
    group_name VARCHAR(32) NOT NULL,
    course_id INT REFERENCES courses(course_id),
    teacher_id INT REFERENCES teachers(teacher_id),
    is_active BOOLEAN DEFAULT TRUE
);

create table pupils(
    pupil_id SERIAL NOT NULL,
    pupil_name VARCHAR(32) NOT NULL,
    pupil_tel NUMERIC(13) NOT NULL,
    group_id INT REFERENCES groups(course_id),
    is_active BOOLEAN DEFAULT TRUE
);

create table attendances(
    attendance_id SERIAL NOT NULL,
    pupil_id INT REFERENCES pupils(pupil_id),
    is_active BOOLEAN DEFAULT TRUE  
);

