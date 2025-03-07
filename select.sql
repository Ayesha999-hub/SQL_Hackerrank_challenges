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

/*
Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.

Approach: fetched distinct city names whose name starts and ends wih vowels using left and right function*/
select distinct city from station
where left(city ,1 ) in ('a','e','i','o','u') and
right(city ,1) in ('a','e','i','o','u');

/*Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
Approach: queried the names of cities whose starting letter is not vowel by usinf not regexp function*/
select distinct city 
from station
where city not regexp '^[aeiou]';

/*Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates
Approach: feched the city names whose ending letter is not vowel by using not regexp function*/

select distinct city 
from station
where city not regexp '[aeiou]$';

/*Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

Approach: fetched the name of cities whose name nor start neiher end with a vowel by using not regexp function*/

select distinct city 
from station
where city not regexp '^[aeiou]' or city not regexp '[aeiou]$';

/*Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.

Approach:retrieved the city names whose name donot start and donot end with a vowel by using and with not regexp function*/

select distinct city 
from station
where city not regexp '^[aeiou]' and city not regexp '[aeiou]$';


/*Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

Approach: retrieved the names of students whose marks are greter than 75 and ordered by last character in asc and th
e the one with same last three characters with id asc*/

select name from students
where marks > 75
order by right(name , 3 ) asc , ID asc   ;

/*Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.
Approach : using order by to  retrieve the employee names alphabetically */

select  name from employee
order by name asc;

/*Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than $2000  per month who have been employees for less than 10  months. Sort your result by ascending employee_id.
Approach: retrived the names of employees whose slaryy is gereater than $2000 and employeess experience less tthan 10 months by using and condition while ordering by asc */

select name from employee 
where salary > 2000 and months < 10
order by employee_id;
 
