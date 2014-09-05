FactoryGirl.define do
  factory :skill do
    title { Faker::Lorem.words(1).first }
  end
end
