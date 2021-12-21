# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(
   email: 'osuga@a',
   password: 'atsuki'
)   


genres = ['仕事', '会食', '日常会話']

genres.each do |genre|
  Genre.find_or_create_by(name: genre)
end