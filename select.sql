/*Question
Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.*/

/*Approach
retrieved the column name from city table where country code is equal to'USA'and popualtion is greater than 120000*/ 

select name from city 
where countrycode = 'USA'
and population > 120000;

/*Query all columns (attributes) for every row in the CITY table. 

Approach: retrieved all columns with every row from city table */

select * from city 

/*Query all columns for a city in CITY with the ID 1661.

Approach: retrieved all the columns from city table where id is equal to 1661*/

select * from city 
where id = 1661;


/* Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.

Approach:retrieved all the attributes from the city table where countrycode is equal to jpn */

select * from city 
where countrycode = 'JPN';

/*Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.

Approach:queried the name cloumn from city table where countrycode is equal to JPN */

select name from city 
where countrycode = 'JPN';

/*
Query a list of CITY and STATE from the STATION table. 
Approach:
retrieved city and state cloumn from station table */

Select city , state from station


/* Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.

Approach: retrieved city column from station table where ID ia an even number checked by aking the modulus of ID and removed duplicated from answer by using distinct */


select distinct(city) from station 
 where  ID % 2 = 0 ;


/*Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.

Approach : computed the difference between the acttual no of cities and distinct number of cities form station table by counting each one with the difference of distinct */
select count(city) - count(distinct(city))
from station;



