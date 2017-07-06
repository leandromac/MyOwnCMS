# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(
  email: 'test@myowncms.com',
  password: '123456',
  password_confirmation: '123456'
)

Panel::Custom.create(
  name: 'MyOwnCMS',
  phone: Faker::PhoneNumber.cell_phone,
  email: Faker::Internet.email,
  address: Faker::Address.street_address,
  about: Faker::Lorem.paragraphs(1),
  facebook: 'http://facebook.com',
  twitter: 'http://twitter.com',
  instagram: 'http://instagram.com',
  youtube: 'http://youtube.com',
  linkedin: 'http://linkedin.com',
  text_contact: Faker::Lorem.sentences,
  footer_title: 'We are what you need',
  footer_text: Faker::Lorem.paragraph,
)

Panel::About.create(
  title: Faker::Lorem.sentence,
  about: Faker::Lorem.paragraphs,
  blockquote: Faker::Lorem.sentence,
)

Panel::Style.create(
)