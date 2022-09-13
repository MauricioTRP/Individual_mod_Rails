# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Users creation"
(1..100).each do |t|
  User.create({
    name: Faker::Name.name,
    email: Faker::Internet.email,
    comments: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
    hobbies: Faker::Hobby.activity,
    description: Faker::Hipster.sentence,
    jobs: Faker::Job.title,
    studies: Faker::Educator.degree
  })
end