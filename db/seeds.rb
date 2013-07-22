# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# user = User.create(email: 'navidm@gmail.com', password: 'password', password_confirmation: 'password')
# user.posts << create_movie_post('Only god Forgives')
# user.posts << create_movie_post('Kick-Ass 2')
# user.posts << create_movie_post('Elysium')


# user = User.create(email: 'test@test.com', password: 'password', password_confirmation: 'password')
# user.posts << create_movie_post('Broken')
# user.posts << create_movie_post('The Good Road')
# user.posts << create_movie_post('Computer Chess')


# movie_titles = [ ['Pacific Rim', 'Monsters University', 'World War Z'],
#                   ['Way, Way Back', 'Fruitvale Station', 'Man of Steel'],
#                   ['The attack', 'the bling ring', "I'm so excited"],
#                   ['The Hunt', 'Crytal Fairy', 'Museum Hours'],
#                   ['Byzantium', 'Viola', 'The Conjuring'] 
#                 ]


# 5.times do |i|
#   user = User.create(email: Faker::Internet.email, password: 'password', password_confirmation: 'password')
#   3.times do |j|
#     user.posts << create_movie_post movie_titles[i][j]
#   end
# end

# def create_movie_post title
#   movie_list = Post.find_tomato title
#   movie = movie_list.first
#   title = movie.title
#   if movie.respond_to?(:links) && movie.links.respond_to?(:clips)
#     clips_url = movie.links.clips
#   end
#   if movie.respond_to?(:posters) && movie.posters.respond_to?(:detailed)
#     image_url = movie.posters.detailed
#   end
#   release_date = movie.release_dates.theater
#   critics_rating = movie.ratings.critics_rating
#   critics_score = movie.ratings.critics_score
#   audience_score = movie.ratings.audience_score
  

#   movie_post = Post.new(title: movie.title, image_url: movie.posters.detailed,
#      trailer_url: trailer_url, release_date: movie.release_dates.theater) 

#   movie_post.save
#   movie_post
# end


