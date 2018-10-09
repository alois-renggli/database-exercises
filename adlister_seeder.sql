use adlister;

INSERT INTO user (name, email, password, phone) VALUES
('bob', 'bob@example.com', 12333, 2783338846),
('joe', 'joe@example.com', 22223, 9933376455),
('sally', 'sally@example.com', 322322, 8884449933),
('adam', 'adam@example.com', 332233444, 8883339922),
('jane', 'jane@example.com', 44456, 4447773399),
('mike', 'mike@example.com', 76543, 7464758488),
('tom', 'tom@example.com',	244444, 1231233333),
('mark', 'mark@example.com',	244, 7897895674),
('travis', 'travis@example.com',	2234, 2342344444),
('wil',	'wil@example.com', 2344, 5587463555);

INSERT INTO ads (user_id, title, description, price) VALUES
(1,'New Sandals', 'STEVE MADDEN SIZE 6 BLACK SANDAL', 100),
(1,'BABY STROLLER','baby trend tandem sit-in-stand double stroller', 234000),
(4, 'Stove for sale', 'Stove electric appliance', 2343),
(5, 'Queen size mattress', 'QUEEN SIZE MATTRESS AND BOX SPRING', 34),
(4, 'CAR FOR SALE', '2014 ford escape titanium-SUV', 57598),
(5, 'CAR FOR SALE', '2017 Ford crown victoria lx sport', 23423434),
(9, ' CAR FOR SALE','2015 DODGE DART SXT', 7645);



INSERT INTO categories (name) VALUES
('community'),
('services'),
('discussion forums'),
('housing'),
('for sale'),
('jobs'),
('gigs');


INSERT INTO ads_categories (ads_id, categories_id) VALUES
(1, 2),
(1, 3),
(2, 5),
(2, 4),
(2, 3),
(3, 1),
(4, 6),
(5, 3),
(6, 2),
(7, 5),
(7, 4),
(7, 7);


-- ('bob', 'bob@example.com', 12333, 2783338846),
-- ('joe', 'joe@example.com', 22223, 9933376455),
-- ('sally', 'sally@example.com', 322322, 8884449933),
-- ('adam', 'adam@example.com', 332233444, 8883339922),
-- ('jane', 'jane@example.com', 44456, 4447773399),
-- ('mike', 'mike@example.com', 76543, 7464758488),
-- ('tom', 'tom@example.com',	244444, 1231233333),
-- ('mark', 'mark@example.com',	244, 7897895674),
-- ('travis', 'travis@example.com',	2234, 2342344444),
-- ('wil',	'wil@example.com', 2344, 5587463555);



