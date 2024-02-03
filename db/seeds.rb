# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Restaurant.destroy_all if Rails.env.development?
Restaurant.create!(
  name: "pizza hut",
  address: "picadily london",
  phone_number: +447485007496,
  category: "italian"
)

Restaurant.create!(
  name: "burger foods",
  address: "chicago",
  phone_number: +15055972460,
  category: "chinese"
)

Restaurant.create!(
  name: "sushi house",
  address: "china town",
  phone_number: +447404475556,
  category: "japanese"
)

Restaurant.create!(
  name: "fish & chips",
  address: " central london",
  phone_number: +447911858829,
  category: "belgian"
)

Restaurant.create!(
  name: "shawarma",
  address: "paris central",
  phone_number: +33779625565,
  category: "french"
)
#["chinese", "italian", "japanese", "french", "belgian"]
