FactoryBot.define do
  factory :customer do
    name { Faker::Lorem.charactors(number: 10) }
    email { Faker::Internet.email }
    encrypted_password { 'password' }
    password_confirmation { 'password' }
  end  
end