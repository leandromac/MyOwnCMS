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
  text_contact: Faker::Lorem.sentences(2),
  footer_title: 'We are what you need',
  footer_text: Faker::Lorem.paragraph(2),
)

Panel::About.create(
  title: Faker::Lorem.sentence,
  about: Faker::Lorem.paragraphs,
  blockquote: Faker::Lorem.sentence,
  image: File.new(Rails.root.join('public', 'system', 'images_default', "about_default.png"), 'r'),
)

12.times do
  Panel::Service.create(
    title: "# Service #{Random.rand(12)}",
    description: 'Dolorem animi ut eius voluptatibus sed. Officia facilis voluptates quo repellendus omnis fugiat. Adipisci dicta officia sit enim nulla et. Nihil aspernatur sit aperiam voluptatem praesentium. Laudantium qui aperiam corrupti dolor.", "Facilis ducimus autem excepturi et. Sequi consectetur qui eos veritatis.',
    image: File.new(Rails.root.join('public', 'system', 'images_default', "service_default.png"), 'r'),
  )
end

8.times do
  Panel::Client.create(
    link: Faker::Internet.url,
    image: File.new(Rails.root.join('public', 'system', 'images_default', "default_image.png"), 'r'),
  )
end

6.times do
  Panel::Slide.create(
    title: Faker::Lorem.word,
    link: Faker::Internet.url,
    image: File.new(Rails.root.join('public', 'system', 'images_default', "slide_default.png"), 'r'),
  )
end

Panel::Style.create(
  nav_color: '#597584',
  footer_color: '#597584',
)