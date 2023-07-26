import json

f = open('IMDB-Movie-Data.json')

data = json.load(f)

for movie in data:
    print('''
    INSERT INTO `sflix`.`Movies`
    (`Title`,
    `Genre`,
    `Description`,
    `Director`,
    `Actors`,
    `Year`,
    `Runtime`,
    `Rating`,
    `Votes`,
    `isAgeRestricted`,
    `Content_URL`)
    VALUES
    ("{}",
    "{}",
    "{}",
    "{}",
    "{}",
    {},
    {},
    {},
    {},
    0,
    "https://s3.amazon.com/bucket/movies/content/{}/");
    '''.format(movie['Title'], movie['Genre'], movie['Description'].replace('"', '\\"'), 
    movie['Director'], movie['Actors'], movie['Year'], movie['Runtime (Minutes)'], 
    movie['Rating'], movie['Votes'], movie['Metascore']))

f.close()