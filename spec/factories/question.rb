FactoryBot.define do
  factory :list do
    question { Faker::Lorem.characters(number:10) }
    choice_1 { Factory::Lorem.characters(number:10) }
    choice_2 { Factory::Lorem.characters(number:10) }
    choice_answer { Factory::Lorem.characters(number:10) }
    explanation { Factory::Lorem.characters(number:10) }
  end
end