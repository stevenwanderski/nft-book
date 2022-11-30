FactoryBot.define do
  factory :nft do
    name { Faker::Beer.unique.name }
  end
end