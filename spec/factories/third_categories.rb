FactoryBot.define do

  factory :third_category do
    id                { "1" }
    third_category    { "c" }
    association :second_category, factory: :second_category
  end

end
