FactoryBot.define do

  factory :second_category do
    id                { "1" }
    second_category   { "b" }
    association :first_category,  factory: :first_category
    association :size_category,   factory: :size_category
  end

end
