create table trail(
    id integer auto_increment,
    course varchar(150) not null,
    distance integer,
    date date,
    constraint pk_trail primary key (id)
);

create table trailer(
    id integer auto_increment,
    nom varchar(150) not null,
    birthdate date,
    constraint pk_trailer primary key (id)
);