# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Celebrity.destroy_all
Tweet.destroy_all
User.destroy_all

sadie = User.create(username: 'sadie', password: '123')

miley = Celebrity.create(name: 'Miley Cyrus', score: 0, occupation: 'singer')

tweet = Tweet.create(content: 'Im tweeting', score: 5, celeb_id: miley.id, user_id: sadie.id)