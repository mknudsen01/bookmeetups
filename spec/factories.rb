FactoryGirl.define do

  factory :user do
    sequence(:username) { |n| Faker::Lorem.word + n.to_s }
    password "12345"
    password_confirmation "12345"
    email {Faker::Internet.email}
  end

  factory :book do
    title {Faker::Lorem.word}
    author {Faker::Name.name}
    isbn {Faker::Number.number(13)}
    google_id {Faker::Number.number(15)}
  end

  factory :meetup do
  end

  factory :message do
    text {Faker::Lorem.sentence}
  end

  factory :photo do
    name { Faker::Lorem.word }
    data { 10011011 }
  end
end

