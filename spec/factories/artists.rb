FactoryBot.define do
  factory :artist do
    first_name Faker::Name.first_name
    middle_name Faker::Name.first_name
    last_name Faker::Name.last_name
    image_path 'https://placekitten.com/300/300'
    active true
  end
end
