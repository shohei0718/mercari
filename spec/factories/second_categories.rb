FactoryBot.define do

  factory :second_category do
    second_category   { "b" }
    association :first_category,  factory: :first_category
    association :size_category,   factory: :size_category
    initialize_with   { SecondCategory.find_or_create_by(id: 1,second_category: 'b')}
  end

end
