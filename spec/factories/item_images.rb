FactoryBot.define do

  factory :item_image do
    image             { "aaaaaa" }
    association :item,  factory: :item
  end

end
