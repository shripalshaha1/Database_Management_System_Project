import mysql.connector

mydb = mysql.connector.connect(
  host="swd.cluster-cyyyx3qbwodq.us-west-1.rds.amazonaws.com",
  user="admin",
  password="/Secret/",
  database="swd"
)

cur = mydb.cursor()

cur.execute("SELECT Title, Genre, Description, Director, Actors, Year, Runtime, Rating, isAgeRestricted FROM Movies WHERE Movie_ID = 2;")

movieDetail = cur.fetchall()

for details in movieDetail:
  print(details)