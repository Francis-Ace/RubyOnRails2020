# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#To run use -> rails db:seed

Appointment.destroy_all
Page.destroy_all
Player.destroy_all
Coach.destroy_all
Team.destroy_all

NUMBER_OF_TEAMS = 30

NUMBER_OF_TEAMS.times do
  team_name = Faker::Sports::Basketball.unique.team
  team_points = rand(1..100)
  team = Team.create(name: team_name, points: team_points)

  number_of_coaches = rand(3..4)
  number_of_coaches.times do
    team.coaches.create(name: Faker::Sports::Basketball.coach)
  end

  number_of_players = rand(10..15)
  number_of_players.times do
    # The created player's team_id(FK) will be assigned the team's PK
    team.players.create(name: Faker::Sports::Basketball.player)
  end
end

coaches_with_appointments = Coach.all.sample(50)

coaches_with_appointments.each do |coach|
  players = Player.all.sample(4)
  players.each do |player|
    Appointment.create(coach: coach,
                      player: player,
                      appointment_date:Faker::Time.forward(50, period: :morning))
  end
end

Page.create(title: "About", content: "Fill this with content", permalink: "about_us")

puts "Created #{Team.count} Teams."
puts "Created #{Coach.count} Coaches"
puts "Created #{Player.count} Players"
puts "Created #{Appointment.count} Appointnments"
