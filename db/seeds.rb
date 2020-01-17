# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Unit.delete_all
User.delete_all
Group.delete_all
#GroupLeader.delete_all
#GroupMember.delete_all

units = ["IT", "Admin", "HR"]

for unit in units
	u = Unit.create(name: unit)
	u.save
end

units = Unit.all
count = 0
units.each do |unit|

	3.times do |i|
		count = count + 1
		name = "user_#{count}"
		u = unit.users.create(first_name: "f_#{name}", last_name: "l_#{name}", email: "#{name}@sample.com")
		u.save
	end
end

date = Date.today
10.times do |week|
	Group.create(name: date - week.week)
end