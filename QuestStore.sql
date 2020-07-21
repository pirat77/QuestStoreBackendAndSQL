create table user_types
(
    id   integer not null
        constraint user_types_pk
            primary key,
    name text    not null
);

alter table user_types
    owner to postgres;

create table teams
(
    id   serial not null
        constraint teams_pk
            primary key,
    name text   not null
);

alter table teams
    owner to postgres;

create table students_details
(
    id          serial  not null
        constraint students_pk
            primary key,
    wallet      integer not null,
    total_money integer not null,
    team_id     integer not null
        constraint team_id
            references teams
);

alter table students_details
    owner to postgres;

create table users
(
    id           serial  not null
        constraint users_pk
            primary key,
    login        text    not null,
    password     text    not null,
    first_name   text    not null,
    last_name    text    not null,
    is_active    boolean not null,
    user_type_id integer not null
        constraint user_type_id
            references user_types,
    student_id   integer
        constraint student_id
            references students_details
);

alter table users
    owner to postgres;

create unique index users_id_uindex
    on users (id);

create unique index users_login_uindex
    on users (login);

create unique index students_id_uindex
    on students_details (id);

create unique index teams_id_uindex
    on teams (id);

create table classrooms
(
    id   serial not null
        constraint classrooms_pk
            primary key,
    name text   not null
);

alter table classrooms
    owner to postgres;

create unique index classrooms_id_uindex
    on classrooms (id);

create table levels
(
    id    serial  not null
        constraint levels_pk
            primary key,
    name  text    not null,
    value integer not null
);

alter table levels
    owner to postgres;

create unique index levels_id_uindex
    on levels (id);

create table users_classrooms
(
    mentor_id    integer not null
        constraint mentor_id
            references users,
    classroom_id integer not null
        constraint classroom_id
            references classrooms
);

alter table users_classrooms
    owner to postgres;

create table quests
(
    id          serial  not null
        constraint quests_pk
            primary key,
    name        text    not null,
    description text    not null,
    value       integer not null,
    category_id integer not null
);

alter table quests
    owner to postgres;

create unique index quests_id_uindex
    on quests (id);

create table students_details_quests
(
    student_id integer not null
        constraint student_id
            references students_details,
    quest_id   integer not null
        constraint quest_id
            references quests,
    date       date    not null
);

alter table students_details_quests
    owner to postgres;

create table categories
(
    id   serial not null
        constraint categories_pk
            primary key,
    name text
);

alter table categories
    owner to postgres;

create unique index categories_id_uindex
    on categories (id);

create table artifacts
(
    id          serial  not null
        constraint artifacts_pk
            primary key,
    name        text    not null,
    description text    not null,
    value       integer not null,
    category_id integer not null
        constraint category_id
            references categories
);

alter table artifacts
    owner to postgres;

create unique index artifacts_id_uindex
    on artifacts (id);

create table students_details_artifacts
(
    student_id  integer not null
        constraint student_id
            references students_details,
    artifact_id integer not null
        constraint artifact_id
            references artifacts,
    date        date
);

alter table students_details_artifacts
    owner to postgres;

create table whiprounds
(
    id          serial  not null
        constraint whiprounds_pk
            primary key,
    name        integer not null,
    artifact_id integer not null
        constraint artifact_id
            references artifacts
);

alter table whiprounds
    owner to postgres;

create unique index whiprounds_id_uindex
    on whiprounds (id);

create table students_details_whiprounds
(
    student_id   integer not null
        constraint student_id
            references students_details,
    whipround_id integer not null
        constraint whipround_id
            references whiprounds,
    value        integer not null,
    date         date    not null
);

alter table students_details_whiprounds
    owner to postgres;


