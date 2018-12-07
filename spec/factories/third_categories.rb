FactoryBot.define do

  factory :third_category do
    third_category    { "c" }
    association :second_category, factory: :second_category
    initialize_with   { ThirdCategory.find_or_create_by(id: 1,third_category: 'c')}
  end

end
