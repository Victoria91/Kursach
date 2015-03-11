# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


puts 'Creating Forms...'
forms = Form.first_or_create([
  { name: 'Капсулы' },
  { name: 'Таблетки' },
  { name: 'Пилюли' },
  { name: 'Раствор' }
])
puts 'Creating Sales...'
sales = Sale.first_or_create([
  { name: 'Фармамед ООО' },
  { name: 'ADVANCE PHARMA GMBH' },
  { name: 'Аквион ЗАО' }
])
puts 'Creating Medicines...'
sales = Medicine.first_or_create([
  { name: 'Глицин', min: 3, sale: Sale.first },
  { name: 'Луцетам', min: 2, sale: Sale.first },
  { name: 'Терафлю', min: 2, sale: Sale.last },
  { name: 'Йодомарин', min: 10, sale: Sale.first },
  { name: 'Пиковит', min: 5, sale: Sale.last }
])