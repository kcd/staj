# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email:"staj@staj.com", password:"123456", password_confirmation:"123456")
User.create(email:"staj@staaj.com", password:"123456", password_confirmation:"123456")
User.create(email:"staj@bil.omu.edu.tr", password:"123456", password_confirmation:"123456")
User.create(email:"kurum@kurum.com", password:"123456", role:"kurum")
User.create(email:"nty@bil.omu.edu.tr", password:"123456", role:"ogrenci")
User.create(email:"kcd@bil.omu.edu.tr", password:"123456", role:"ogrenci")
User.create(email:"seda@bil.omu.edu.tr", password:"123456", role:"ogrenci")
User.create(email:"beg@bil.omu.edu.tr", password:"123456", role:"ogrenci")
User.create(email:"komisyon@komisyon.com", password:"123456", role:"komisyon")



