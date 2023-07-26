CREATE TABLE Plan (
    Plan_ID INT NOT NULL AUTO_INCREMENT,
    Name VARCHAR(10) NOT NULL,
    Price FLOAT NOT NULL,
    Features VARCHAR(50) NOT NULL,
    Profile_Limit INT NOT NULL,
    PRIMARY KEY (Plan_ID)
);

CREATE TABLE Billing (
    Bill_ID INT NOT NULL AUTO_INCREMENT,
    Bill_Amount FLOAT NOT NULL,
    Payment_Status INT NOT NULL,
    Statement_Date DATE NOT NULL,
    PRIMARY KEY (Bill_ID)
);

CREATE TABLE Account (
    Account_ID INT NOT NULL AUTO_INCREMENT,
    Name VARCHAR(45) NOT NULL,
    Email VARCHAR(50) NOT NULL,
    UserName VARCHAR(45) NOT NULL,
    Password VARCHAR(50) NOT NULL,
    Birthday DATE NOT NULL,
    Account_Status INT NOT NULL,
    Payment_Method VARCHAR(45) NOT NULL,
    PRIMARY KEY (Account_ID)
);

CREATE TABLE Movies (
    Movie_ID INT NOT NULL AUTO_INCREMENT,
    Title VARCHAR(200) NOT NULL,
    Genre VARCHAR(100) NOT NULL,
    Description VARCHAR(500) NOT NULL,
    Director VARCHAR(50) NOT NULL,
    Actors VARCHAR(100) NOT NULL,
    Year INT NOT NULL,
    Runtime INT NOT NULL,
    Rating FLOAT NOT NULL,
    Votes INT NOT NULL,
    isAgeRestricted INT NOT NULL,
    Content_URL VARCHAR(100) NOT NULL,
    PRIMARY KEY (Movie_ID)
);

CREATE TABLE Subscription (
    Subscription_ID INT NOT NULL AUTO_INCREMENT,
    Account_ID INT NOT NULL,
    Bill_ID INT NOT NULL,
    Plan_ID INT NOT NULL,
    Start_Date DATE NOT NULL,
    End_Date DATE NOT NULL,
    isActive INT NOT NULL,
    PRIMARY KEY (Subscription_ID),
    FOREIGN KEY (Account_ID)
        REFERENCES Account (Account_ID),
    FOREIGN KEY (Plan_ID)
        REFERENCES Plan (Plan_ID),
    FOREIGN KEY (Bill_ID)
        REFERENCES Billing (Bill_ID)
);

CREATE TABLE Service_Request (
    Service_ID INT NOT NULL AUTO_INCREMENT,
    Service_Num INT NOT NULL,
    Account_ID INT NOT NULL,
    Complains VARCHAR(200) NOT NULL,
    isResolved INT NOT NULL,
    PRIMARY KEY (Service_ID),
    FOREIGN KEY (Account_ID)
        REFERENCES Account (Account_ID),
    UNIQUE (Service_Num)
);

CREATE TABLE Profiles (
    Profile_ID INT NOT NULL AUTO_INCREMENT,
    Name VARCHAR(50) NOT NULL,
    Number INT NOT NULL,
    Account_ID INT NOT NULL,
    isAgeRestricted INT NOT NULL,
    PRIMARY KEY (Profile_ID),
    FOREIGN KEY (Account_ID)
        REFERENCES Account (Account_ID)
);

CREATE TABLE Watch_History (
    Watch_ID INT NOT NULL AUTO_INCREMENT,
    Profile_ID INT NOT NULL,
    Movie_ID INT NOT NULL,
    Rating INT,
    Likes INT,
    Comment VARCHAR(200),
    Timeline INT NOT NULL,
    Last_Watched DATE NOT NULL,
    PRIMARY KEY (Watch_ID),
    FOREIGN KEY (Movie_ID)
        REFERENCES Movies (Movie_ID),
    FOREIGN KEY (Profile_ID)
        REFERENCES Profiles (Profile_ID)
);