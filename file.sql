/*  Create Database */
create database breif_6_blog;

/*  use db  */
use breif_6_blog;

/*    create tables   */
create table users(
    email varchar(60) primary key,
    nom varchar(30) not null unique,
    image varchar(200) default 'https://avatar.iran.liara.run/public/',
    date_creation date default (CURRENT_DATE)
);

create table categorie (
    _ref int AUTO_INCREMENT primary key,
    nom varchar(100) unique
);

create table article(
    articleID int AUTO_INCREMENT primary key,
    contenue varchar(2900) not null,
    writer varchar(30),
    catg int,
    foreign key(writer) references users(email),
    foreign key(catg) references categorie(_ref)
);

create table commentaire(
    _ref int AUTO_INCREMENT primary key,
    contenue varchar(200) not null,
    user varchar(30) not null default 'guest',
    article int not null,
    foreign key(user) references users(email),
    foreign key(article) references article(articleID)
)

/*  modify the constraint of a column*/
/*  change the contenue of an article from type varchar to text  */
ALTER TABLE article 
MODIFY contenue text not null;

/* change the name of a column */
ALTER table users
change image imgURL varchar(200);

/*  */