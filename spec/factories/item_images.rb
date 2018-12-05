FactoryBot.define do

  factory :item_image do
    id                { "1" }
    image             { "aaaaaa" }
    association :item,  factory: :item
  end

end
