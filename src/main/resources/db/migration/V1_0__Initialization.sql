create schema if not exists cqrs;

create table if not exists cqrs.post (
    id SERIAL primary key,
    content varchar not null
);

create table if not exists cqrs.comment (
    id SERIAL primary key,
    content varchar not null,
    post_id bigint not null,
    foreign key (post_id) references cqrs.post (id)
);

create table if not exists cqrs.comment_reaction (
    id SERIAL primary key,
    emoji varchar not null,
    comment_id bigint not null,
    foreign key (comment_id) references cqrs.comment (id)
);