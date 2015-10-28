# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Hacker.new({:email => "iplayguitar81@yahoo.com", :roles => ["admin"], :password => "wonkawash", :password_confirmation => "wonkawash" }).save(false)