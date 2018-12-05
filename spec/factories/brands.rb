FactoryBot.define do

  factory :brand do
    id                { "1" }
    brand             { "shaneru" }
    association :first_category,  factory: :first_category
  end

end
