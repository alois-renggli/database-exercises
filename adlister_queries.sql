use adlister;

-- Write SQL queries to answer the following questions:
-- --
-- -- For a given ad, what is the email address of the user that created it?
SELECT u.email, a.title
FROM adlister.user as u
JOIN adlister.ads as a
ON u.id = a.user_id
WHERE u.id = a.user_id;

-- -- For a given ad, what category, or categories, does it belong to?
SELECT a.title, c.name
FROM adlister.ads as a
JOIN adlister.ads_categories as ac
ON a.id = ac.ads_id
JOIN adlister.categories as c
ON c.id = ac.categories_id;
-- WHERE a.id = c.ads_id

-- -- For a given category, show all the ads that are in that category.
SELECT a.title, c.name
FROM adlister.categories as c
JOIN adlister.ads_categories as ac
ON c.id = ac.categories_id
JOIN adlister.ads as a
ON a.id = ac.ads_id
WHERE c.name = 'for sale';

-- -- For a given user, show all the ads they have posted.

SELECT a.title, u.name
FROM adlister.user as u
JOIN adlister.ads as a
ON u.id = a.user_id
WHERE u.name = 'bob' OR u.name = 'adam';