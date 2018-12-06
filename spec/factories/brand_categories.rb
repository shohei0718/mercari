FactoryBot.define do

  factory :brand_categories do
    association :brand,           factory: :brand
    association :first_category,  factory: :first_category
  end

end
