FactoryBot.define do

  factory :first_category do
    first_category    { "a" }
    initialize_with   { FirstCategory.find_or_create_by(id: 1,first_category: 'a')}
  end

end
