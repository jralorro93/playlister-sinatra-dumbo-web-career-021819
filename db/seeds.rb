# Add seed data here. Seed your database with `rake db:seed`
require 'faker'

15.times do
  Artist.create(
    name: Faker::Artist.name
  )
end

100.times do
  Song.create(
    name: Faker::Music::UmphreysMcgee.name
  )
end

20.times do
  Genre.create(
    name: Faker::Music.name
  )
end
