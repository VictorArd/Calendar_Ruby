require_relative 'lib/user'
require_relative 'lib/event'


julie = User.new("julie@julie.com")
jean = User.new("jean@jean.com")

e = Event.new("2019-01-13 09:00", 10, "standup quotidien", [julie, jean])
puts "Voici l'email du premier attendee de l'événement : #{e.guest.first.email}"