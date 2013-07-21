# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Post.create(title: "Enders game", url: "www.youtube.com", image_url: "poster.png")

User.create(email: 'navidm@gmail.com', password: 'password', password_confirmation: 'password')
User.create(email: 'test@test.com', password: 'password', password_confirmation: 'password')


10.times do 
  user = User.create(email: Faker::Internet.email, password: 'password', password_confirmation: 'password')
  3.times do 
    user.posts.create(title: Faker::Company.catch_phrase)
  end
end

