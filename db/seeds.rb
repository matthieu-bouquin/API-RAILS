require 'faker'

Article.destroy_all
User.destroy_all

30.times do 
    Article.create!(
      title: Faker::Movies::StarWars.planet,
      content: Faker::Movies::StarWars.wookiee_sentence
    )
end

8.times do 
  User.create(
    email: Faker::Internet.email,
    password: Faker::String.random(length: 8)
  )
end
