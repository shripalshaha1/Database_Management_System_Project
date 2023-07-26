# SJSU Movie Database System

The SJSU Movie Database (SMD) project aims to design and implement a database to store and manage information about movies, users, profiles, subscriptions, and billing. The goal is to build a system similar to Netflix where users can search, rate and review movies and manage their accounts.

## Two database implementations were developed and compared:

### 1. Relational Database Design

A relational database was designed using MySQL to store movies, users, profiles, and related data in separate tables.

![ER Diagram of the relational schema](SJSU_Movie_Database_using_MySQL/ER-3.png) 

 ER Diagram of the relational schema

* The ER diagram shows the entities - Movies, Genre, Cast, Customers, Accounts, Profiles, Subscriptions, Billing, etc. and the relationships between them.

* Key functions like search, filters, CRUD operations, and analytics were implemented using SQL queries, triggers, and stored procedures in MySQL. Transactions, indexing and constraints ensure data integrity.

### 2. Document Database Design

MongoDB was used to store the data in a flexible document model instead of separate tables.

![5](https://github.com/shripalshaha1/Database_Management_System_Project/assets/113332807/3c25da4c-32ea-4050-9270-7806c3d739b7)

#### Document structure for storing related movie and user data

* Related data is embedded within documents instead of normalized across multiple tables. This denormalized data model improves performance for reads and throughput.

* The same key functions were implemented using MongoDB queries and aggregations. Indexing and embedding optimize for faster access compared to joins.

### Comparison and Conclusion

* MySQL relational model has better data integrity, and isolation and suits applications with transactional data.

* MongoDB document model is more flexible, scalable and provides higher performance for reads and writes.
  
* For this movie management use case, MongoDB provided faster performance for queries, inserts, and updates compared to MySQL.

* However, MySQL was better for simple searches due to full-text indexing and native query optimization.

Overall, MongoDB's dynamic schema and scalability make it more suitable for rapidly evolving data and changing application requirements.

### Performance measured for both SQL and NoSQL

![Screenshot 2022-03-28 at 23 58 09](https://github.com/shripalshaha1/Database_Management_System_Project/assets/113332807/54c71397-df30-4ff1-8a88-7686003c1fdf)


![6](https://github.com/shripalshaha1/Database_Management_System_Project/assets/113332807/8202a027-1c7d-4ffe-ad77-4f3e1592fa24)



In summary, both SQL and NoSQL databases have their pros and cons. The optimal choice depends on the specific application, data, and performance needs. This project provided valuable experience in modeling, implementing and optimizing databases using both relational and non-relational approaches.


## Leveraging Managed Database Services on AWS

Both implementations of the SJSU Movie Database leverage managed database services on AWS cloud to automate and simplify database administration. This enables focusing engineering efforts on application logic rather than infrastructure management.

### For MySQL
Specifically, the MySQL implementation deploys the relational database on Amazon RDS (Relational Database Service). RDS provides a fully managed DB instance for MySQL, handling tasks like backups, software updates, failure detection, recovery, and more. The RDS API allows programmatically scaling the MySQL database up or down on demand.


### For NoSQL
For the MongoDB document database implementation, the Atlas managed service is used. Atlas is MongoDB's own Database-as-a-Service (DBaaS) optimized specifically for MongoDB deployments. It offers auto-scaling, redundancy, and security capabilities tailored to MongoDB. Using Atlas reduces the operational overhead of managing MongoDB clusters across different cloud providers.



By leveraging these fully managed database services on AWS, both MySQL and MongoDB can be deployed, managed, monitored, and scaled efficiently. This enables focusing development efforts on building application logic and domain functionality rather than database administration. The automated management and availability provided by RDS and Atlas are well suited for a cloud-based movie management application like the SJSU Movie Database system.
