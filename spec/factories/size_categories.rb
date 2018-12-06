FactoryBot.define do

  factory :size_category do
    size_category             { "a" }
    initialize_with   { SizeCategory.find_or_create_by(id: 1,size_category: 'a')}
  end

end
