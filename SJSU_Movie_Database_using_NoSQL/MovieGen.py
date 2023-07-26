import json

f = open('IMDB-Movie-Data.json')
o = open('IMDB-Movie-Data-Proc.json', 'w')

data = json.load(f)
output = []

for movie in data:
    m = {}
    m['_id'] = 'M{}'.format(movie['Rank'])
    m['title'] = movie['Title']
    m['genre'] = movie['Genre'].split(',')
    m['description'] = movie['Description'].replace('"', '\\"')
    m['directors'] = [x.strip() for x in movie['Director'].split(',')]
    m['actors'] = [x.strip() for x in movie['Actors'].split(',')]
    m['year'] = int(movie['Year'])
    m['runtime'] = int(movie['Runtime (Minutes)'])
    m['rating'] = float(movie['Rating'])
    m['votes'] = int(movie['Votes'])
    m['age_restricted'] = False
    m['content_url'] = f"https://s3.amazon.com/bucket/movies/content/{int(movie['Rank'])}/"
    output.append(m)

o.write(json.dumps(output, indent=4))
o.close()
f.close()