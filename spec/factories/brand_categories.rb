FactoryBot.define do

  factory :brand_categories do
    id                { "1" }
    association :brand,           factory: :brand
    association :first_category,  factory: :first_category
  end

end
