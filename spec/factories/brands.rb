FactoryBot.define do

  factory :brand do
    brand             { "shaneru" }
    initialize_with   { Brand.find_or_create_by(id: 1,brand: 'shaneru')}
  end

end
