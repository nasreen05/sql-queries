create database Telugu;

use Telugu;

create table telugu_movies(
movie_id int,
	movie_name varchar(14),
	movie_release_date date,
	movie_ticket_price double,
	movie_duration time,
	rating float,
	movie_actor_name varchar(14),
	producer_name varchar(15),
	director_name varchar(15),
	budget double,
	movie_collection double,
	platform_release_date_time datetime,
	no_of_screens int
	);
    
    desc telugu_movies;
    
    insert into telugu_movies (movie_id, movie_name, movie_release_date, movie_ticket_price, movie_duration,  
movie_actor_name, producer_name, rating, budget, movie_collection) values (1, 'Baahubali-1', "2017-09-3", 70.0, '3:00', 'prabash', 'dirling', 7.9, 200.0, 300.0);
insert into telugu_movies (movie_id, movie_name, movie_release_date, movie_ticket_price, movie_duration,  
movie_actor_name, producer_name, rating, budget, movie_collection) values (2, 'Baahubali-2', "2019-09-3", 100.0, '3:00', 'prabash', 'dirling', 9.9, 1200.0, 2300.0);
insert into telugu_movies (movie_id, movie_name, movie_release_date, movie_ticket_price, movie_duration,  
movie_actor_name, producer_name, rating, budget, movie_collection) values (3, 'Pushpa-1', "2021-09-3", 100.0, '3:00', 'allu', 'arjun', 9.9, 1200.0, 2300.0);
insert into telugu_movies (movie_id, movie_name, movie_release_date, movie_ticket_price, movie_duration,  
movie_actor_name, producer_name, rating, budget, movie_collection) values (4, 'Pushpa-2', "2024-09-3", 200.0, '3:00', 'allu', 'arjun', 9.9, 1200.0, 2300.0);
insert into telugu_movies (movie_id, movie_name, movie_release_date, movie_ticket_price, movie_duration,  
movie_actor_name, producer_name, rating, budget ) values (5, 'Deshamuduru', "2021-09-3", 100.0, '3:00', 'allu', 'arjun', 9.9, 1200.0);
insert into telugu_movies (movie_id, movie_name, movie_release_date, movie_ticket_price, movie_duration,  
movie_actor_name, producer_name, rating, budget ) values (6, 'arya', "2021-09-3", 100.0, '3:00', 'allu', 'arjun', 9.9, 1200.0);
insert into telugu_movies (movie_id, movie_name, movie_release_date, movie_ticket_price, movie_duration,  
movie_actor_name, producer_name, rating, budget ) values (7, 'Vaeudu', "2021-09-3", 100.0, '3:00', 'allu', 'arjun', 9.9, 1200.0);
insert into telugu_movies values (8, 'RRR', '2025-09-12', 500.0, '3:00', 
    5.8, 'NTR Charan', 'tttt', 'yogaraj bat', 100.34, 200.65, '2025-09-12 10:00:00', 2000);
    
insert into telugu_movies values (9, 'Arya-2', '2025-09-12', 500.0, '3:00', 
    5.8, 'allu arjun', 'tttt', 'yogaraj bat', 100.34, 200.65, '2025-09-12 10:00:00', 2000);
    
insert into telugu_movies values (10, 'Yamadoga', '2025-09-12', 500.0, '3:00', 
    5.8, 'NTR ', 'tttt', 'zzzzz', 100.34, 200.65, '2025-09-12 10:00:00', 2000);
    
    insert into telugu_movies values (11, 'Yavadu', '2025-09-12', 500.0, '3:00', 
    5.8, 'Charan', 'tttt', 'ffff', 100.34, 200.65, '2025-09-12 10:00:00', 2000);
    
    insert into telugu_movies values (12, 'Chiruta', '2025-09-12', 500.0, '3:00', 
    5.8, ' Charan', 'tttt', 'fffff', 100.34, 200.65, '2025-09-12 10:00:00', 2000);
    
    insert into telugu_movies values (13, 'SwSudheer', '2025-09-12', 500.0, '3:00', 
    5.8, 'Sudheer', 'tttt', 'chasfgk', 100.34, 200.65, '2025-09-12 10:00:00', 2000);
    
    insert into telugu_movies values (14, 'Galoddu', '2025-09-12', 500.0, '3:00', 
    5.8, 'Sudheer', 'tttt', 'chasfgk', 100.34, 200.65, '2025-09-12 10:00:00', 2000);
    
    insert into telugu_movies values (13, 'G.O.A.T', '2025-09-12', 500.0, '3:00', 
    5.8, 'Sudheer', 'tttt', 'chasfgk', 100.34, 200.65, '2025-09-12 10:00:00', 2000);
    
    select * from telugu_movies;
    
    
    
    









