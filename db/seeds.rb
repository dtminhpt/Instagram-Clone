# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Photo.delete_all

10.times do 
	photo = Photo.create(username: Faker::Name.name, likes_count: Faker::Number.number(3), url: Faker::Avatar.image, caption: Faker::Hipster.paragraph)
	2.times do
      photo.comments << Comment.new(text: Faker::Hipster.paragraph)
    end
end
