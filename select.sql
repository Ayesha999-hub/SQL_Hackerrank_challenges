/*Question
Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.*/

/*Approach
retrieved the column name from city table where country code is equal to'USA'and popualtion is greater than 120000*/ 

select name from city 
where countrycode = 'USA'
and population > 120000;

/*Query all columns (attributes) for every row in the CITY table. */

/* retrieved all columns with every row from city table */

select * from city 

