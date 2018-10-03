# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
# RecordLabel.create(name: "Epic Records")
# puts "Created #{RecordLabel.all.last}"
# Review.create(rating: 6, content: "They're old", user_id: 1, event_id: 1)
# puts "Created #{Review.all.last}"
# puts "Done"
Artist.destroy_all
Event.destroy_all
User.destroy_all
Ticket.destroy_all

puts "Creating Test App"
Artist.create(name: "Pearl Jam", username: "PJam", password: "password", password_confirmation: "password", email: "Pearljam@pearljam.com" )
puts "Created #{Artist.all.last.name}"
Event.create(city: "New York City", venue: "Madison Square Garden" , show_date:"2018/10/3", show_time: "21:00", artist_id: 1)
puts "Created #{Event.all.last.venue}"
User.create(first_name:"Evans", last_name:"Wang",  username: "EventLover", password: 'flatiron', email:"Evans.wang@gmail.com",  city: "New York City")
puts "Created #{User.all.last.username}"
Ticket.create(user_id: 1, event_id: 1)
puts "Created #{Ticket.all.last}"
puts "done 1st batch"
puts "Creating 2nd Test App"
Artist.create(name: "Taylor Swift", username: "TaySwift", password: "password", password_confirmation: "password", email: "Taytay@pearljam.com" )
puts "Created #{Artist.all.last.name}"
Event.create(city: "Boston", venue: "Boston Hall",show_date:"2018/11/2", show_time: "21:00", artist_id: 2)
puts "Created #{Event.all.last.venue}"
User.create(first_name:"Sean", last_name:"Para",  username:"TSwiftLover", password: 'flatiron', password_confirmation: 'flatiron',email:"Sean.para@gmail.com",  city: "New York City")
puts "Created #{User.all.last.username}"
Ticket.create(user_id: 2, event_id: 2)
puts "Created #{Ticket.all.last}"
puts "done 2nd batch"
