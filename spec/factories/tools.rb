FactoryGirl.define do
  factory :tool do
    title { Faker::Lorem.words(1).first }
  end
end
