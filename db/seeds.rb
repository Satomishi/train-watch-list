require 'open-uri'
require 'json'

url = 'https://tmdb.lewagon.com/movie/top_rated'
raw_data = JSON.parse(URI.parse(url).read)

raw_data['results'].each do |data|
  Movie.create(title: data['title'],
               overview: data['overview'],
               poster_url: "https://image.tmdb.org/t/p/w250#{data['poster_path']}",
               rating: data['vote_average'].to_f)
end
