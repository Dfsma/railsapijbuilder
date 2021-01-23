# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times { Category.create!(name: Faker::Lorem.word)}

# Create Products

10.times {
    category = Category.all.sample
    Product.create!(
        name: Faker::Lorem.sentence,
        url_image: Faker::Internet.url,
        price: Faker::Number.decimal,
        discount: Faker::Number.decimal_part,
        category: category

    )
}