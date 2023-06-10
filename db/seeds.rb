# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

# Create 1000 visits with random load times between 1 and 5 seconds
1000.times do
  Visit.create(
    created_at: Faker::Time.between(from: 1.week.ago, to: Time.now),
    load_time: Faker::Number.between(from: 1, to: 5)
  )
end
<%= area_chart Visit.group_by_minute(:created_at).maximum(:load_time) %>
