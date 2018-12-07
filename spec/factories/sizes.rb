FactoryBot.define do

  factory :size do
    size              { "l"}
    association :size_category, factory: :size_category
    initialize_with   { Size.find_or_create_by(id: 1,size: 'l')}
  end

end

