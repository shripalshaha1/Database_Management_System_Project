# SJSU Movie Database System
The SJSU Movie Database (SMD) project aims to design and implement a database to store and manage information about movies, users, profiles, subscriptions, and billing. The goal is to build a system similar to Netflix where users can search movies, create profiles, subscribe to plans, etc.

## Two implementations of the database are developed and compared:

### 1. Relational database using MySQL
* Uses ER diagram and relational schema to model movies, users, profiles, billing etc. as separate relational tables.
  
* Implements core functions like user signup, creating profiles, searching movies, filtering by criteria, updating ratings/likes, generating statements etc. using SQL queries, triggers and stored procedures.
  
* Optimized to leverage MySQL's capabilities like transactions, indexing, constraints for a robust relational database.

  
### 2. Document database using MongoDB
*Flexible schema stores movies, users, profiles as nested documents instead of separate tables
*Implements same key functions using MongoDB queries, aggregations leveraging its dynamic document model and native indexing
*Embedded data model and denormalization optimizes for faster reads and throughput for this use case.

## Key objectives:

*Compare SQL vs NoSQL databases for implementing a real-world movie management system
*Evaluate pros and cons of relational vs document model for this application
*Implement core functionalities like search, filters, CRUD operations, analytics in both databases
*Analyze performance of queries, updates, scalability using metrics
*Demonstrate modeling, schema design, query optimization principles
*Highlight similarites and differences in capabilities of MySQL and MongoDB

The project provides hands-on experience in designing, implementing and optimizing databases for a complex domain using both SQL and NoSQL. The analysis aims to determine the optimal database technology based on the application requirements, data properties and performance needs.
