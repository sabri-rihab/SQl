/*===================    Niveau 1:     ===========================*/
/*  1   */
INSERT into users (userName, email, password, status)
VALUES ("jdupont", "jean.dupont@email.com","$2y$10$..." , "éditeur")

/*  2   */
select title, created_at, status from articles

/*  3   */
update articles
set status = "archivé"
where status = "draft" and year(created_at) < 2024

/*  4   */
delete from comments
where status = 'spam'
and created_at < NOW() -  INTERVAL 1 YEAR;

/*====================    Niveau 2:     ========================*/
/*  5   */
-- Récupérer les articles publiés après le 1er décembre 2024
SELECT * FROM articles
WHERE created_at > '2024-12-01';

/*  6   */
-- Trier les utilisateurs par date d'inscription (du plus ancien au plus récent)
SELECT * FROM users
ORDER by created_at

/*  7   */
-- Obtenir les 5 articles les plus récents (seulement titres et dates)
SELECT a.title, a.created_at FROM articles a
ORDER by created_at DESC
LIMIT 5;

/*  8   */
-- Récupérer tous les rôles distincts des utilisateurs
SELECT u.status FROM `users` u
GROUP BY u.status;

/*====================    Niveau 3:     ========================*/
/*  9   */
-- Récupérer les articles de la catégorie "Technologie" qui sont soit "publiés", soit en "brouillon avancé"
SELECT * FROM articles a
WHERE a.catg_id = 1
AND (a.status = "published" or a.status =  "archivé");

/*  10   */
-- Lister les commentaires postés entre le 1er et le 15 décembre 2024
SELECT * FROM comments c
WHERE c.created_at BETWEEN '2024-12-01' AND '2024-12-15';

/*  11   */
-- Trouver les articles appartenant aux catégories "PHP", "JavaScript" ou "Base de données"
SELECT a.* FROM articles a, categories c
WHERE c.name in ("JavaScript", "PHP", "Base de données")
and c._id = a.catg_id

/*  12   */
-- Rechercher tous les utilisateurs dont l'email finit par "@gmail.com"
SELECT * FROM users u
WHERE u.email LIKE "%@gmail.com";

/*====================    Niveau 4:     ========================*/
/*  13   */
-- Compter le nombre total d'articles publiés
SELECT COUNT(*) as 'total articles' FROM articles

/*  14   */
-- Compter le nombre d'articles par catégorie
SELECT a.catg_id AS 'category',COUNT(a.catg_id) as 'Count Catg' FROM articles a
GROUP BY a.catg_id;

-- autre method
-- Compter le nombre d'articles par catégorie
SELECT (SELECT c.name  
        from categories c
       WHERE c._id = a.catg_id
       )AS 'Category',COUNT(a.catg_id) FROM articles a
GROUP BY a.catg_id;

/*  15   */
-- Calculer la longueur moyenne (en caractères) des articles publiés
select avg(LENGTH(a.content)) as 'Average article length' from articles a;

/*  16   */
--  La date du dernier article publié
SELECT MAX(a.created_at) FROM articles a;

-- - La date du premier commentaire du système
SELECT MIN(c.created_at) FROM comments c



/*====================    Niveau 5:     ========================*/
/*  18   */
SELECT a.title, a.user_id as userName, a.created_at FROM articles a

/*  19   */
select (select c.name from categories c where c._id=a.catg_id) as categories, Count(a.*)  as 'ArticlesCount' 
from categories c, articles a
group by a.catg_id
/*  20   */
/*  21   */
/*  22   */
/*  23   */
/*  24   */
/*  25   */