Release 5

1 - SELECT * FROM states;
2 - SELECT * FROM regions;
3 - SELECT state_name, population FROM states;
4 - SELECT state_name, population FROM states ORDER BY population DESC;
5 - SELECT state_name FROM states WHERE region_id = 7;
6 - SELECT state_name, population_density FROM states WHERE population_density ORDER BY population_density ASC;
7 -  SELECT state_name FROM states WHERE population BETWEEN 1000000 AND 1500000;
8 - SELECT state_name, region_id FROM states WHERE region_id ORDER BY region_id ASC;
9 - SELECT region_name FROM regions WHERE region_name LIKE '%Central%';
10 - SELECT regions.region_name, states.state_name FROM regions Join states ON regions.id = states.region_id ORDER BY region_id ASC ;


<!-- 
What are databases for?
	-Storing information.
What is a one-to-many relationship?
	-A situation where one object/thing contains many other sub things. like a house with multiple rooms. or a pomegranate and seeds. Or an album and its songs. 
What is a primary key? What is a foreign key? How can you determine which is which?
	- Primary key is the unique identifying aspect of an item in a table. Foreign keys are keys from other tables that are used to link or connect tables. BY convention primary keys are usually the first column. Naming is also usually indicative.
How can you select information out of a SQL database? 
	- SELECT FROM table ... in many many combos of ways
What are some general guidelines for that?
	- capital letters for the commands/clauses lowercase for the sources.-->