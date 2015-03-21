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
  { name: 'OLAINFARM' },
  { name: 'Аквион ЗАО' },
  { name: 'МАКИЗ-ФАРМА,ООО' },
  { name: 'ТЕВА'}
])
puts 'Creating Medicines...'
sales = Medicine.first_or_create([
  { name: 'Глицин', min: 3, sale: Sale.first },
  { name: 'Луцетам', min: 2, sale: Sale.first },
  { name: 'Терафлю', min: 2, sale: Sale.last },
  { name: 'Йодомарин', min: 10, sale: Sale.first },
  { name: 'Пиковит', min: 5, sale: Sale.last },
  { name: 'АДАПТОЛ', min: 2, sale: Sale.last },
  { name: 'АКАТИНОЛ МЕМАНТИН 0,01 ', min: 5, sale: Sale.first }
])
puts 'Creating orders'
orders = Order.create([
  { created_at: Time.now - 3.month },
  { created_at: Time.now - 3.month },
  { created_at: Time.now - 3.month },
  { created_at: Time.now - 3.month },
  { created_at: Time.now - 3.month },
  { created_at: Time.now - 3.month },
  { created_at: Time.now - 3.month },
  { created_at: Time.now - 3.month },
  { created_at: Time.now - 3.month },
  { created_at: Time.now - 3.month },
  { created_at: Time.now - 3.month },
  { created_at: Time.now - 3.month },
  { created_at: Time.now - 3.month },
  { created_at: Time.now - 3.month },
  { created_at: Time.now - 2.month },
  { created_at: Time.now - 2.month },
  { created_at: Time.now - 2.month },
  { created_at: Time.now - 2.month },
  { created_at: Time.now - 2.month },
  { created_at: Time.now - 2.month },
  { created_at: Time.now - 2.month },
  { created_at: Time.now - 2.month },
  { created_at: Time.now - 2.month },
  { created_at: Time.now - 3.month },
  { created_at: Time.now - 3.month },
  { created_at: Time.now - 3.month },
  { created_at: Time.now - 3.month },
  { created_at: Time.now - 3.month },
  { created_at: Time.now - 3.month },
  { created_at: Time.now - 3.month },
  { created_at: Time.now - 3.month },
  { created_at: Time.now - 3.month },
  { created_at: Time.now - 3.month },
  { created_at: Time.now - 3.month },
  { created_at: Time.now - 1.month },
  { created_at: Time.now - 1.month },
  { created_at: Time.now - 1.month },
  { created_at: Time.now - 1.month },
  { created_at: Time.now - 1.month },
  { created_at: Time.now - 1.month },
  { created_at: Time.now - 1.month },
  { created_at: Time.now - 1.month },
  { created_at: Time.now - 1.month },
  { created_at: Time.now - 1.month },
  { created_at: Time.now - 3.month },
  { created_at: Time.now - 3.month },
  { created_at: Time.now - 3.month },
  { created_at: Time.now - 3.month },
  { created_at: Time.now - 3.month },
  { created_at: Time.now - 3.month }
])