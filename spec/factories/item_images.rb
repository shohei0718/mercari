FactoryBot.define do

  factory :item_image do
    image File.open("#{Rails.root}/public/uploads/パソコン.jpg")
    association :item,  factory: :item
  end

end
