# require 'open-uri'

puts 'Cleaning database...'
  Grue.destroy_all
  User.destroy_all

puts 'Creating users...'

user_admin = User.create(username:"Thorgrue", email:"thor@grue.linette", password:"gruegrue")
# avatar = File.open("app/assets/images/admin.jpg")
# user_admin.photo.attach(io: avatar, filename: 'admin.jpg', content_type: 'image/jpg')
user_admin.save!

puts 'Creating cranes...'

titan_jaune = Grue.create(name: "La grue Titan jaune", type: "", height: "43m")
# titan_jaune.update(latitude: 45.7726, longitude: 4.8033)
# titan_jaune = File.open("app/assets/images/lyon_vaise.jpeg")
# titan_jaune.photo.attach(io: source, filename: 'lyon_vaise.jpeg', content_type: 'image/jpeg')
titan_jaune.save!

titan_grise = Grue.create(name: "La grue Titan grise", type: "", height: "47m")
# titan_grise.update(latitude: 45.7726, longitude: 4.8033)
# titan_grise = File.open("app/assets/images/lyon_vaise.jpeg")
# titan_grise.photo.attach(io: source, filename: 'lyon_vaise.jpeg', content_type: 'image/jpeg')
titan_grise.save!
