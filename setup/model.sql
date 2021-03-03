create extension "pgcrypto";
	
-- ROUTES
create table routes (
	route_id serial not null primary key,
	route_name character varying(64) not null
);
create unique index routes_uniq_idx on routes (lower(route_name));

-- LANGUAGES
create table languages (
	language_id serial not null primary key,
	language_name character varying(64) not null
);
create unique index languages_uniq_idx on languages (lower(language_name));

-- STACKS
create table stacks (
	stack_id serial not null primary key,
	stack_name character varying(64) not null,
	route_id int not null references routes(route_id)
);
create unique index stacks_uniq_idx on stacks (lower(stack_name));

-- STACK SCHEMAS
create table stack_schemas(
	stack_schema_id serial not null primary key,
	stack_id int not null references stacks(stack_id),
	language_id int not null references languages(language_id)
);

-- SPECIALIZATIONS
create table specializations(
	specialization_id serial not null primary key,
	specialization_name character varying(128) not null
);
create unique index specializations_uniq_idx on specializations (lower(specialization_name));

-- USERS

create table users (
	user_id serial not null primary key,
	user_username character varying(40) not null,
	user_fullname character varying(60) not null,
	user_password character varying(60) not null,
	user_avatar character varying(100),
	user_gender smallint default 0,
	user_joined_at timestamptz default current_timestamp,
	user_is_active boolean default true,
	user_hiring boolean default false,
	language_id int not null references languages(language_id),
	specialization_id int not null references specializations(specialization_id)
);

-- CONNECTIONS
create table connections (
	connection_id serial not null primary key,
	connection_time timestamptz default current_timestamp,
	connection_completed boolean default false,
	follower_id int not null references users (user_id),
	following_id int not null references users (user_id)
);
