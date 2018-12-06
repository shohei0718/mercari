FactoryBot.define do

  factory :item_image do
    image             { Faker::Avatar.image }
    association :item,  factory: :item
  end

end
