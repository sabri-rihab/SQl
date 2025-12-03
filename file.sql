create database Blog;
use Blog;
Create table users (
    userName VARCHAR(60) PRIMARY KEY,
    email VARCHAR(100) unique NOT NULL,
    password varchar(300) not null,
    status varchar(60) not null,
    created_at date default (current_date)
);
INSERT INTO users (userName, email, password, status, created_at) VALUES
('admin_blog', 'admin@blogcms.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', 'admin', '2024-01-15'),
('marie_dubois', 'marie.dubois@email.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', 'editor', '2024-02-10'),
('pierre_leroy', 'pierre.leroy@gmail.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', 'author', '2024-02-15'),
('sophie_martin', 'sophie.martin@protonmail.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', 'author', '2024-03-01'),
('jean_dupont', 'jean.dupont@yahoo.fr', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', 'author', '2024-03-10'),
('lucie_bernard', 'lucie.bernard@email.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', 'author', '2024-03-15'),
('thomas_petit', 'thomas.petit@gmail.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', 'subscriber', '2024-03-20'),
('julie_roux', 'julie.roux@protonmail.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', 'subscriber', '2024-04-01'),
('marc_vincent', 'marc.vincent@yahoo.fr', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', 'author', '2024-04-05'),
('isabelle_leroy', 'isabelle.leroy@gmail.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', 'subscriber', '2024-04-10'),
('david_morel', 'david.morel@email.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', 'author', '2024-04-15'),
('caroline_duval', 'caroline.duval@protonmail.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', 'editor', '2024-05-02'),
('nicolas_lambert', 'nicolas.lambert@gmail.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', 'author', '2024-05-10'),
('elodie_garnier', 'elodie.garnier@email.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', 'subscriber', '2024-05-20'),
('antoine_chevalier', 'antoine.chevalier@yahoo.fr', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', 'author', '2024-06-01'),
('clara_royer', 'clara.royer@protonmail.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', 'author', '2024-06-10'),
('quentin_menard', 'quentin.menard@gmail.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', 'subscriber', '2024-06-15'),
('amelie_colin', 'amelie.colin@email.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', 'author', '2024-07-03'),
('vincent_gauthier', 'vincent.gauthier@protonmail.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', 'editor', '2024-07-12'),
('marine_lebrun', 'marine.lebrun@gmail.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', 'subscriber', '2024-07-20');

Create table categories (
    _id int PRIMARY KEY,
    name varchar(100) not null,
    description varchar(400)
);
INSERT INTO categories (_id, name, description) VALUES
(1, 'Technologie', 'Actualités, tutoriels et analyses sur les nouvelles technologies'),
(2, 'Santé', 'Conseils santé, bien-être et médecine préventive'),
(3, 'Voyage', 'Récits de voyage, guides pratiques et conseils touristiques'),
(4, 'Cuisine', 'Recettes, techniques culinaires et astuces de cuisine'),
(5, 'Sport', 'Actualités sportives, conseils d’entraînement et nutrition'),
(6, 'Éducation', 'Pédagogie, conseils d’apprentissage et innovations éducatives'),
(7, 'Finance', 'Gestion budgétaire, investissements et actualités économiques'),
(8, 'Mode', 'Tendances, conseils style et actualités de la mode');

create table articles (
    _id int not null PRIMARY key,
    title varchar(200) not null,
    content text not null,
    imgURL varchar(200),
    created_at date default (current_date),
    user_id varchar(60),
    catg_id int not null,
    foreign key(user_id) references users(userName) on delete set null,
    foreign key(catg_id) references categories(_id)
);

INSERT INTO articles (_id, title, content, imgURL, created_at, user_id, catg_id) VALUES
(1, 'Les Nouvelles Tensions Technologiques en 2024', 'Explorez les technologies émergentes qui vont transformer notre quotidien cette année...', 'tech1.jpg', '2024-02-20', 'pierre_leroy', 1),
(2, 'Comment Maintenir une Bonne Santé au Travail', 'Des conseils pratiques pour préserver votre santé physique et mentale...', 'sante1.jpg', '2024-02-25', 'sophie_martin', 2),
(3, 'Les 10 Destinations à Visiter Absolument en 2024', 'Découvrez les destinations qui vont marquer l’année 2024...', 'voyage1.jpg', '2024-03-05', 'jean_dupont', 3),
(4, 'Recette du Gâteau au Chocolat Fondant', 'Une recette simple et rapide pour un gâteau au chocolat irrésistible...', 'cuisine1.jpg', '2024-03-10', 'lucie_bernard', 4),
(5, 'Préparation Marathon : Guide Complet du Débutant', 'Tout ce qu''il faut savoir pour préparer son premier marathon...', 'sport1.jpg', '2024-03-15', 'marc_vincent', 5),
(6, 'Apprendre à Coder en 6 Mois : Mon Parcours', 'Comment j''ai appris la programmation web en moins de 6 mois...', 'education1.jpg', '2024-03-20', 'david_morel', 6),
(7, 'Investir dans la Cryptomonnaie en 2024', 'Guide pour débutants sur les opportunités et risques...', 'finance1.jpg', '2024-04-01', 'nicolas_lambert', 7),
(8, 'Les Tendances Mode Printemps-Été 2024', 'Découvrez les must-have de la saison prochaine...', 'mode1.jpg', '2024-04-05', 'antoine_chevalier', 8),
(9, 'Les Avantages du Télétravail pour la Productivité', 'Comment le travail à distance peut booster vos performances...', 'tech2.jpg', '2024-04-10', 'amelie_colin', 1),
(10, 'Les Superaliments pour Renforcer l''Immunité', '10 aliments à intégrer dans votre alimentation pour être en forme...', 'sante2.jpg', '2024-04-15', 'clara_royer', 2),
(11, 'Voyager en Solo : Mes Conseils Sécurité', 'Guide pratique pour voyager seul en toute sécurité...', 'voyage2.jpg', '2024-04-20', 'vincent_gauthier', 3),
(12, 'Les Bases de la Pâtisserie Française', 'Apprenez les techniques fondamentales de la pâtisserie...', 'cuisine2.jpg', '2024-05-02', 'marine_lebrun', 4),
(13, 'Yoga pour Débutants : Programme sur 30 Jours', 'Un programme progressif pour découvrir le yoga...', 'sport2.jpg', '2024-05-10', 'jean_dupont', 5),
(14, 'Les Méthodes d''Apprentissage des Langues Efficaces', 'Comparatif des différentes approches pour apprendre une langue...', 'education2.jpg', '2024-05-20', 'lucie_bernard', 6),
(15, 'Économiser pour Son Premier Achat Immobilier', 'Stratégies pour constituer son apport personnel...', 'finance2.jpg', '2024-06-01', 'marc_vincent', 7),
(16, 'Le Style Minimaliste : Less is More', 'Comment adopter une garde-robe minimaliste et élégante...', 'mode2.jpg', '2024-06-10', 'david_morel', 8),
(17, 'Introduction à l''Intelligence Artificielle', 'Comprendre les bases de l''IA et ses applications...', 'tech3.jpg', '2024-06-15', 'nicolas_lambert', 1),
(18, 'La Méditation pour Réduire le Stress', 'Techniques de méditation accessibles à tous...', 'sante3.jpg', '2024-07-03', 'antoine_chevalier', 2),
(19, 'Voyager avec un Petit Budget', 'Astuces pour voyager sans se ruiner...', 'voyage3.jpg', '2024-07-12', 'clara_royer', 3),
(20, 'Les Plats Typiques de la Cuisine Marocaine', 'Découverte des saveurs et traditions culinaires du Maroc...', 'cuisine3.jpg', '2024-07-20', 'amelie_colin', 4),
(21, 'Préparation Physique pour le Ski', 'Conseils pour se préparer avant la saison de ski...', 'sport3.jpg', '2024-08-01', 'vincent_gauthier', 5),
(22, 'Les Outils Numériques pour l''Éducation', 'Les meilleures applications pour apprendre et enseigner...', 'education3.jpg', '2024-08-10', 'marine_lebrun', 6),
(23, 'Comprendre les Marchés Boursiers', 'Guide pour débutants en bourse...', 'finance3.jpg', '2024-08-20', 'pierre_leroy', 7),
(24, 'Le Style Casual Chic au Bureau', 'Comment être élégant tout en restant confortable...', 'mode3.jpg', '2024-09-01', 'sophie_martin', 8),
(25, 'La Sécurité Informatique pour les Particuliers', 'Protégez vos données et votre vie privée en ligne...', 'tech4.jpg', '2024-09-10', 'jean_dupont', 1),
(26, 'L''Importance du Sommeil pour la Santé', 'Comment améliorer la qualité de son sommeil...', 'sante4.jpg', '2024-09-20', 'lucie_bernard', 2),
(27, 'Les Plus Beaux Villages de France', 'Découverte des villages classés parmi les plus beaux de France...', 'voyage4.jpg', '2024-10-01', 'marc_vincent', 3),
(28, 'Les Techniques de Cuisson Santé', 'Cuire ses aliments tout en préservant les nutriments...', 'cuisine4.jpg', '2024-10-10', 'david_morel', 4),
(29, 'Le CrossFit : Avantages et Risques', 'Analyse complète de cette discipline sportive...', 'sport4.jpg', '2024-10-20', 'nicolas_lambert', 5),
(30, 'Apprendre par le Jeu : La Ludopédagogie', 'Utiliser le jeu comme outil d''apprentissage...', 'education4.jpg', '2024-11-01', 'antoine_chevalier', 6);


create table comments(
    _id int PRIMARY key not null,
    userName varchar(60) default 'guest',
    content varchar(200) not null,
    article int not null,
    foreign key(userName) references users(userName) on delete set null,
    foreign key(article) references articles(_id) on delete cascade
);

INSERT INTO comments (_id, userName, content, article) VALUES
(1, 'marie_dubois', 'Excellent article, très bien documenté !', 1),
(2, 'pierre_leroy', 'Je ne suis pas tout à fait d''accord sur certains points.', 1),
(3, 'sophie_martin', 'Cela m''a beaucoup aidé, merci pour ces conseils.', 2),
(4, 'jean_dupont', 'Très bel article, les photos sont magnifiques !', 3),
(5, 'lucie_bernard', 'Je trouve que certains conseils sont dangereux.', 4),
(6, 'thomas_petit', 'Parfait pour les débutants comme moi, merci !', 5),
(7, 'julie_roux', 'Très détaillé, j''ai appris beaucoup de choses.', 6),
(8, 'marc_vincent', 'C''est exactement ce que je cherchais, merci !', 7),
(9, 'isabelle_leroy', 'Je ne comprends pas la partie sur les investissements.', 8),
(10, 'david_morel', 'Super article, j''ai hâte de lire la suite !', 9),
(11, 'caroline_duval', 'Les tendances présentées sont déjà dépassées.', 10),
(12, 'nicolas_lambert', 'Je vais essayer la recette ce week-end !', 11),
(13, 'elodie_garnier', 'Bonnes astuces pour économiser, merci.', 12),
(14, 'antoine_chevalier', 'Le style minimaliste n''est pas pour tout le monde.', 13),
(15, 'clara_royer', 'Très bon tutoriel sur l''IA pour débutants.', 14),
(16, 'quentin_menard', 'La méditation a changé ma vie, merci pour l''article.', 15),
(17, 'amelie_colin', 'Voyager avec un petit budget c''est possible !', 16),
(18, 'vincent_gauthier', 'Les plats marocains sont délicieux, merci.', 17),
(19, 'marine_lebrun', 'Je me prépare pour le ski, merci pour les conseils.', 18),
(20, 'admin_blog', 'Quelles applications recommandez-vous pour les enfants ?', 19),
(21, 'marie_dubois', 'La bourse me fait peur, merci pour les explications.', 20),
(22, 'pierre_leroy', 'Je cherche justement un style casual chic, merci !', 21),
(23, 'sophie_martin', 'Important de parler de sécurité informatique.', 22),
(24, 'jean_dupont', 'Je dors mal, merci pour ces conseils.', 23),
(25, 'lucie_bernard', 'J''ai visité certains villages, ils sont magnifiques !', 24);
