# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



# neil = User.create(name: "Neil Barot", username: "nbarot", email: "nbarot@tulane.edu", address: "31 McAlister Drive", isDriver: false)
# wilson = User.create(name: "Wilson Jeter", username: "wjeter", email: "wjeter@tulane.edu", address: "31 McAlister Drive", isDriver: true)
# sarah = User.create(name: "Sarah Lohmeier", username: "slohmeier", email: "slohmeie@tulane.edu", address: "31 McAlister Drive", isDriver: false)
# peter = User.create(name: "Peter Riser", username: "priser", email: "priser@tulane.edu", address: "31 McAlister Drive", isDriver: true)


admin = User.create(id: -1, name: "Administrator", username: "admin", email: "admin@expresso-studio.com", address: "Stanley Thomas 302", isDriver: false, isAdmin: true)
