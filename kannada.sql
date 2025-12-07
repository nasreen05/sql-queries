create database KANNADA;

use KANNADA;

create table kannada_movies(
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
    drop table kannada_movies;
    insert into kannada_movies values (1, 'Google', '2025-09-12', 500.0, '3:00', 
    5.8, 'yesh', 'yyyyy', 'zzzzzz', 100.34, 200.65, '2025-09-12 10:30:00', 120);
    
    insert into kannada_movies values (2, 'KGF-1', '2024-09-12', 500.0, '3:00', 
    5.8, 'yesh', 'tttt', 'zzzzzz', 100.34, 200.65, '2024-09-12 12:00:00', 2000);
    
    insert into kannada_movies values (3, 'KGF-2', '2025-09-12', 500.0, '3:00', 
    5.8, 'yesh', 'tttt', 'zzzzzz', 100.34, 200.65, '2025-09-12 10:00:00', 2000);
    
    insert into kannada_movies values (4, 'papy', '2025-09-20', 500.0, '3:00', 
    5.8, 'xyz', 'tttt', 'zzzzzz', 100.34, 200.65, '2025-09-20 10:00:00', 125);
    
    insert into kannada_movies values (5, 'Kallara sante', '2008-09-12', 500.0, '3:00', 
    5.8, 'yesh', 'sggsh', 'asdg', 100.34, 200.65, '2009-09-12 10:00:00', 2000);
    
    insert into kannada_movies values (8, 'Galipata-1', '2015-09-12', 500.0, '3:00', 
    5.8, 'ganesh', 'tttt', 'yogaraj but', 100.34, 200.65, '2015-09-12 12:30:00', 200);
    
    insert into kannada_movies values (7, 'Galipata-2', '2025-09-12', 500.0, '3:00', 
    5.8, 'ganesh', 'tttt', 'yogaraj bat', 100.34, 200.65, '2025-09-12 10:00:00', 2000);
    
    
    
    
    insert into kannada_movies (movie_id, movie_name, movie_release_date, movie_ticket_price, movie_duration,  
movie_actor_name, producer_name) values (9, 'Roky', "2024-09-3", 400.0, '3:00', 'yesh', 'yyyy');


insert into kannada_movies (movie_id, movie_name, movie_release_date, movie_ticket_price, movie_duration,  
movie_actor_name, producer_name) values (10, 'Mugarumale-1', "2009-09-3", 60.0, '3:00', 'Ganesh', 'yogaraj bat');

insert into kannada_movies (movie_id, movie_name, movie_release_date, movie_ticket_price, movie_duration,  
movie_actor_name, producer_name, rating, budget, movie_collection) values (11, 'Mugarumale-2', "2009-09-3", 60.0, '3:00', 'Ganesh', 'yogaraj bat', 8.9, 200.0, 300.0);

insert into kannada_movies (movie_id, movie_name, movie_release_date, movie_ticket_price, movie_duration,  
movie_actor_name, producer_name, rating, budget, movie_collection) values (12, 'Mugarumale-3', "2009-09-3", 70.0, '3:00', 'Ganesh', 'yogaraj bat', 7.9, 200.0, 300.0);

insert into kannada_movies (movie_id, movie_name, movie_release_date, movie_ticket_price, movie_duration,  
movie_actor_name, producer_name, rating, budget, movie_collection) values (13, 'Kantara', "2009-09-3", 70.0, '3:00', 'Shetty', 'Shetty', 7.9, 200.0, 300.0);


insert into kannada_movies (movie_id, movie_name, movie_release_date, movie_ticket_price, movie_duration,  
movie_actor_name, producer_name, rating, budget) values (14, 'Kantara-2', "2009-09-3", 70.0, '3:00', 'Shetty', 'Shetty', 7.9, 200.0);

insert into kannada_movies (movie_id, movie_name, movie_release_date, movie_ticket_price, movie_duration,  
movie_actor_name, producer_name, rating, budget, movie_collection) values (15, 'appu', "2009-09-3", 70.0, '3:00', 'punith', 'raj', 7.9, 200.0, 300.0);
select * from kannada_movies;
desc kannada_movies;
    
    